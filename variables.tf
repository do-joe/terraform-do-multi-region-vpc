variable "name_prefix" {
  description = "prefix used for the resources created in this module"
  type        = string
}

variable "primary_region" {
  description = "DO region slug for the primary region"
  type        = string
}

variable "primary_ip_range" {
  description = "CIDR notation for subnet used for primary region VPC"
  type        = string
  nullable    = true
  default     = null
}

variable "secondary_region" {
  description = "DO region slug for the secondary region"
  type        = string
}

variable "secondary_ip_range" {
  description = "CIDR notation for subnet used for secondary region VPC"
  type        = string
  nullable    = true
  default     = null
}
