from diagrams import Cluster, Diagram, Edge
from diagrams.generic.device import Tablet
from diagrams.aws.compute import Lambda
from diagrams.aws.management import Cloudwatch
from diagrams.aws.security import IAMRole

with Diagram("Architecture diagram", show=False, direction="LR"):
    user = Tablet("end user's web browser")

    with Cluster("AWS"):
        iam_role  = IAMRole("IAM policy\n(allow logging)")
        lambda_python_app = Lambda("Lambda\n(Python web app)")
        cloud_watch_logs = Cloudwatch("CloudWatch logs\n(from web app)")

    user >> lambda_python_app >> cloud_watch_logs
    lambda_python_app - Edge(color="brown", style="dashed") - iam_role
