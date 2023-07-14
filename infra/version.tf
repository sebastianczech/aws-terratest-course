terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.8.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "archive" {
}

provider "aws" {
  region = var.region
}