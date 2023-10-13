
variable "tenant_id" {
  description = "DigitalEx tenant id"
}

variable "bearer_token" {
  description = "DigitalEx bearer token"
}

variable "aws_profile" {
  description = "AWS profile"
}

variable "regions" {
  description = "Comma separated list of regions to onboard. Blank to onboard all enabled regions. Default is blank"
  default     = ""
}
