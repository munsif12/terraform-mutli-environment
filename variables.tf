variable "aws_access_key" {
  sensitive   = true
  description = "AWS Access Key"
  type        = string
  default     = "AKIA3QUMOM2DRIRV6MO"
  validation {
    condition     = length(var.aws_access_key) > 4
    error_message = "Invalid aws access key"
  }
}
variable "aws_secret_key" {
  sensitive   = true
  description = "AWS Secret Key"
  type        = string
  default     = "iC+hlnJBo6j+iytxHy862OtbABE9qr6RjW/wt0a"
  validation {
    condition     = length(var.aws_secret_key) > 4
    error_message = "Invalid aws secret key"
  }
}
