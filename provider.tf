/*
This terraform file will create an EC2 instance into the aws platform and some other resources.
*/
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.73.0"
    }
  }

}

provider "aws" {
  region     = "us-east-1"
  default_tags {
    tags = {
      Environment = "Test"
      Owner       = "Amaury"
      maneged-by  = "Terraform"
      Project     = "Test"
    }
  }
}