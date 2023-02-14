variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  type        = map(string)
  description = "(Optional) Tags for resources"
}