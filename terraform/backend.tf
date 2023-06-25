provider "aws" {
  region                  = "${var.aws_region}"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
}

terraform {
  backend "s3" {
    bucket = "bridge-app"
    region = "us-east-1"
    key = "bridge/terraform.tfstate"
  }
}