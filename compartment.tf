# Create a compartment for terraform generated resources
variable "compartment_ocid" { default = null }

resource "oci_identity_compartment" "tf-compartment" {
  # Required
  compartment_id = var.compartment_ocid
  description    = "Compartment for Terraform resources."
  name           = "terraform-compartment"
}