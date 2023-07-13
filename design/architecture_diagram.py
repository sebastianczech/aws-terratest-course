from diagrams import Cluster, Diagram
from diagrams.generic.device import Tablet
from diagrams.aws.compute import Lambda
from diagrams.aws.integration import SQS, SNS
from diagrams.aws.storage import S3
from diagrams.aws.management import Cloudwatch
from diagrams.aws.database import Dynamodb
from diagrams.programming.language import Python

with Diagram("Architecture diagram", show=False, direction="LR"):
    user = Tablet("end user's web browser")

    with Cluster("AWS"):
        lambda_python_app = Lambda("Python web app")
        cloud_watch_logs = Cloudwatch("logs from web app")

    user >> lambda_python_app >> cloud_watch_logs
