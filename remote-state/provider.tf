terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.48.0"
        }
    }
    backend "s3" {
        bucket = "sudheerdevops59"
        key    = "remote-state-demo"
        region = "us-east-1"
        dynamodb_table = "daws-locking"
  }
}


#provide authentication here
provider "aws" {
    region = "us-east-1"
}