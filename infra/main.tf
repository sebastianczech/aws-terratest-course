locals {
  function_name = "${var.prefix}_aws_lambda"
}

### IAM assume role
data "aws_iam_policy_document" "lambda_assume_role_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "lambda_role" {
  name               = "${var.prefix}_lambda_role"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role_policy.json
}

### Python code for Lambda function
data "archive_file" "python_lambda_package" {
  type = "zip"
  source {
    content  = templatefile("files/lambda.py", {})
    filename = "lambda.py"
  }
  output_path = "files/lambda.zip"
}

### Lambda function
resource "aws_lambda_function" "lambda_func" {
  # checkov:skip=CKV_AWS_116: Lambda is deployed only in lab environment - it's not production environment, where AWS Lambda function should be configured inside a VPC
  # checkov:skip=CKV_AWS_117: For simple Lambda used only in lab environment there is no need to investigate errors or failed requests to the connected Lambda function
  filename         = "files/lambda.zip"
  function_name    = local.function_name
  role             = aws_iam_role.lambda_role.arn
  source_code_hash = filebase64sha256("files/lambda.zip")
  kms_key_arn      = data.aws_kms_key.lambda_kms.arn

  runtime                        = "python3.9"
  handler                        = "lambda.lambda_handler"
  timeout                        = 10
  reserved_concurrent_executions = 10

  environment {
    variables = {
      foo = "bar"
    }
  }
  tracing_config {
    mode = "PassThrough"
  }
}

data "aws_kms_key" "lambda_kms" {
  key_id = "alias/aws/lambda"
}

### Lambda URL
resource "aws_lambda_function_url" "lambda_endpoint" {
  function_name      = aws_lambda_function.lambda_func.function_name
  authorization_type = "AWS_IAM" # "NONE"

  cors {
    allow_credentials = true
    allow_origins     = ["*"]
    allow_methods     = ["*"]
    allow_headers     = ["date", "keep-alive"]
    expose_headers    = ["keep-alive", "date"]
    max_age           = 86400
  }
}

### Log group with logs from Lambda
resource "aws_cloudwatch_log_group" "lambda_log_group" {
  # checkov:skip=CKV_AWS_158: For lab environment there is no need to encrypt logs
  name              = "/aws/lambda/${local.function_name}"
  retention_in_days = 1
}

### IAM logging
resource "aws_iam_policy" "lambda_iam_logging" {
  name        = "${var.prefix}_lambda_logging"
  path        = "/"
  description = "IAM policy for logging from Lambda"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_iam_logging.arn
}

### IAM permission for user
data "aws_iam_user" "iam_user_seba" {
  user_name = var.username
}

resource "aws_lambda_permission" "allow_iam_user" {
  statement_id           = "AllowExecutionForIamUser"
  action                 = "lambda:InvokeFunctionUrl"
  function_url_auth_type = "AWS_IAM"
  principal              = data.aws_iam_user.iam_user_seba.arn
}
