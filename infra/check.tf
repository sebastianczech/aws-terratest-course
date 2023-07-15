check "lambda_deployed" {
  data "external" "this" {
    program = ["curl", "${aws_lambda_function_url.lambda_endpoint.function_url}"]
  }

  assert {
    # If we execution function using URL without authentication, then it should be received forbidden message, if Lambda is deployed correctly
    condition = data.external.this.result.Message == "Forbidden"
    error_message = format("The Lambda %s is not deployed.",
      aws_lambda_function.lambda_func.function_name
    )
  }
}