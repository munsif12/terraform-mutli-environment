variable "aws_access_key" {
  sensitive   = true
  description = "AWS Access Key"
  type        = string
  default     = "AKIA3QU"
  validation {
    condition     = length(var.aws_access_key) > 4
    error_message = "Invalid aws access key"
  }
}
variable "aws_secret_key" {
  sensitive   = true
  description = "AWS Secret Key"
  type        = string
  default     = "t9ffseMT"
  validation {
    condition     = length(var.aws_secret_key) > 4
    error_message = "Invalid aws secret key"
  }
}
