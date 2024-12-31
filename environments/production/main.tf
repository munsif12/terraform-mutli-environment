terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

locals {
  enviornment = "production"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "security_group" {
  source                     = "../../modules/security-group"
  security_group_name        = "${local.enviornment}-security-group-for-ec2"
  security_group_description = "Allow inbound traffic on port 22 and 80"
  ingress_cidr_blocks        = ["0.0.0.0/0"]
  vpc_id                     = "vpc-0c1f4b7b7b8b9b8b7"
  tags = {
    Name        = "${local.enviornment}-security-group"
    Environment = local.enviornment
  }
}

module "ec2_instance" {
  source            = "../../modules/ec2"
  depends_on        = [module.security_group]
  ec2_instance_name = "${local.enviornment}-instance"
  ec2_instance_type = "t2.micro"
  ec2_instance_ami  = "ami-0e2c8caa4b6378d8c"
  tags = {
    Name        = "${local.enviornment}-instance"
    Environment = local.enviornment
  }

  // inputs
  security_group_id = module.security_group.security_group_id
}
