variable "ec2_instance_name" {
  sensitive   = false
  description = "Name of the ec2 instance"
  type        = string
  default     = "ec2_instance"
}
variable "ec2_instance_ami" {
  sensitive   = false
  description = "Instance OS AMI"
  type        = string
  default     = "ami-0e2c8caa4b6378d8c"
  validation {
    condition     = length(var.ec2_instance_ami) > 4 && substr(var.ec2_instance_ami, 0, 4) == "ami-"
    error_message = "The ec2_instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "ec2_instance_type" {
  sensitive   = false
  description = "Instance type or size for the ec2 instance"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  sensitive   = false
  description = "security_group_id"
  type        = string
}

variable "tags" {
  sensitive   = false
  description = "tags for the ec2 instance"
  type        = map(string)
  default = {
    Name = "ec2_instance"
  }
}

