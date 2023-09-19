
variable "mcx_tenant_id" {
  description = "MCX tenant id"
}

variable "mcx_bearer_token" {
  description = "MCX bearer token"
}

variable "aws_profile" {
  description = "AWS profile"
}

variable "regions" {
  description = "Comma separated list of regions to onboard. Blank to onboard all enabled regions. Default is blank"
  default     = ""
}
