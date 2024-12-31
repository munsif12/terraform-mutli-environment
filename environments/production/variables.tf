variable "aws_access_key" {
  sensitive   = true
  description = "AWS Access Key"
  type        = string
  default     = "AKIA3QUMOM" // add your access key here
  validation {
    condition     = length(var.aws_access_key) > 4
    error_message = "Invalid aws access key"
  }
}
variable "aws_secret_key" {
  sensitive   = true
  description = "AWS Secret Key"
  type        = string
  default     = "t9ffseMTIxA9uWZYT35B" // add your secret key here
  validation {
    condition     = length(var.aws_secret_key) > 4
    error_message = "Invalid aws secret key"
  }
}
