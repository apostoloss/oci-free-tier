# Create a compartment for terraform generated resources
variable "compartment_ocid" { default = null }
variable "compartment_name" {
  description = "Provide the name of the compartment to be created. All resources will then be created within this compartment"
  type        = string
}

resource "oci_identity_compartment" "tf-compartment" {
  # Required
  compartment_id = var.compartment_ocid
  description    = "Compartment for Terraform resources."
  name           = var.compartment_name
}