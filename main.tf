terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

module "cedric-adrs/s3-webapp" {
  source  = "app.terraform.io/cedric-adrs/s3-webapp/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}