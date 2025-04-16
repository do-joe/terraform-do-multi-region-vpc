variable "name_prefix" {
  description = "prefix used for the resources created in this module"
  type        = string
}

variable "vpcs" {
  type = list(object({
    region = string
    cidr   = string
  }))
  description = "List of VPC configurations"
}

