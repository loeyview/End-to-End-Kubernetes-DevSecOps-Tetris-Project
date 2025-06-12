terraform {
  backend "s3" {
    bucket         = "your-unique-s3-bucket-name"
    key            = "End-to-End-Kubernetes/Jenkins/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "your-dynamodb-lock-table"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
