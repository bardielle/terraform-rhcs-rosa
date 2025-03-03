variable "ocm_environment" {
  type    = string
  default = "production"
}

variable "openshift_version" {
  type    = string
  default = "4.13.13"
  validation {
    condition     = can(regex("^[0-9]*[0-9]+.[0-9]*[0-9]+.[0-9]*[0-9]+$", var.openshift_version))
    error_message = "openshift_version must be with structure <major>.<minor>.<patch> (for example 4.13.6)."
  }
}

variable "cluster_name" {
  type    = string
  default = "rhcs-example"
}
