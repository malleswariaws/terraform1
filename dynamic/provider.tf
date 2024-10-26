terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  
  backend "s3" {
    bucket = "malleswariaws-remote-state"
    key    = "dynamic_demo"
    region = "us-east-1"
    dynamodb_table = "malleswari-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}