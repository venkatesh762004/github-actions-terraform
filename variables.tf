variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
  default     = "ChangeMe123!"
}

variable "allowed_ssh_cidr" {
  description = "Your public IP address with /32"
  type        = string
  default     = "203.0.113.10/32"
}
