
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"

  name                   = var.ec2_instance_name
  ami                    = var.ec2_instance_ami
  instance_type          = var.ec2_instance_type
  vpc_security_group_ids = [var.security_group_id] // can also get from the root main.tf that would be more dynamic and not dependan
  create_eip             = false
  monitoring             = true

  tags = var.tags
}
