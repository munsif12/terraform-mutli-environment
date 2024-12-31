variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "allow-http"
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
  default     = "Security group to allow HTTP traffic"
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
  default     = "vpc-12345678"
}

variable "ingress_cidr_blocks" {
  description = "List of CIDR blocks to allow ingress traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Allow from anywhere
}
variable "engress_cidr_blocks" {
  description = "List of CIDR blocks to allow egress traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Allow from anywhere
}

variable "tags" {
  description = "Tags to apply to the security group"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "example"
  }
}

