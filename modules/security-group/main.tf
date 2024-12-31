terraform {
  required_version = ">= 1.2.0"
}

resource "aws_security_group" "ec2-sg" {

  name        = var.security_group_name
  description = var.security_group_description
  #   vpc_id      = var.vpc_id //will get default

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.ingress_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}
