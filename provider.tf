variable "tenancy_ocid" {
  description = "Your OCI tenant ocid."
  type = string
}
variable "user_ocid" {
  description = "Your OCI user ocid."
  type = string
}
variable "fingerprint" {
  description = "Your OCI private key fingerprint"
  type = string
}
variable "private_key_path" {
  description = "Your OCI key path"
  type = string
}
variable "region" {
  description = "The region of your OCI account"
  type = string
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
