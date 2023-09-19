provider "aws" {}

terraform {
    backend "s3" {
        bucket = "b55-terraform-state1"
        key    = "dev/ec2/terraform.tfstate"
        region = "us-east-1"
      
    }
}