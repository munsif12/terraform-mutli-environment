terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "security_group" {
  source = "../../modules/security-group"
}

module "ec2_instance" {
  source     = "../../modules/ec2"
  depends_on = [module.security_group]

  // inputs
  security_group_id = module.security_group.security_group_id
}
