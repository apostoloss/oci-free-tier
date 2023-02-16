

variable "operating_system" {
  description = "The Operating System of the platform image to use. Valid values are \"Canonical Ubuntu\", \"Oracle Linux\", or \"Oracle Linux Cloud Developer\"."
  type        = string
  default = "Canonical Ubuntu"

  validation {
    condition     = contains(["Canonical Ubuntu", "Oracle Linux", "Oracle Linux Cloud Developer"], var.operating_system)
    error_message = "The value of operating_system must be one of \"Canonical Ubuntu\", \"Oracle Linux\", or \"Oracle Linux Cloud Developer\"."
  }
}

# commented to choose the latest
# variable "operating_system_version" {
#   description = "The version of the Operating System specified in `operating_system`."
#   type        = string
# }


data "oci_core_images" "os" {
  compartment_id           = var.tenancy_ocid
  operating_system         = var.operating_system
  # operating_system_version = var.operating_system_version
  shape                    = "VM.Standard.A1.Flex"
  sort_by                  = "TIMECREATED"
  sort_order               = "DESC"
}

output "os_image_used" {
  value = data.oci_core_images.os.images[0].display_name
}