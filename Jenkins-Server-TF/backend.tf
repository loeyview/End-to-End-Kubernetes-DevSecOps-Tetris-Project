terraform {
  backend "s3" {
    bucket         = "viewko-devops"
    key            = "End-to-End-Kubernetes/Jenkins/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "Lockfiles"
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
