# variables used here
variable "ssh_authorized_keys" {
  description = "SSH authorised keys to add in authorised keys in the VM. Normally just a .pub is sufficient."
}
variable "ssh_private_key_path" {
  description = "The filename to your private key matching a key in authorised keys. Is used by any remote exec provisioner."
}

# arm (Ampere1) resource
resource "oci_core_instance" "a1" {
  # Required
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = oci_identity_compartment.tf-compartment.id
  shape               = "VM.Standard.A1.Flex"

  # Free tier is limited to 4OCPU & 24GB
  shape_config {
    memory_in_gbs = 24
    ocpus         = 4
  }
  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.os.images[0].id # check images.tf
  }

  # Optional
  display_name = "ubuntu-arm-terraformed"
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
  }
  metadata = {
    ssh_authorized_keys = file(var.ssh_authorized_keys)
  }
  preserve_boot_volume = false
}

# resource "null_resource" "remote-exec_a1" {
#   connection {
#     agent       = false
#     timeout     = "30m"
#     host        = oci_core_instance.a1.public_ip
#     user        = "ubuntu"
#     private_key = file(var.ssh_private_key_path)
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "touch ~/remote.exec.file"
#     ]
#   }
# }

output "public-ip-for-arm-ubuntu" {
  description = "The public ip of the compute instance"
  value       = oci_core_instance.a1.public_ip
}

output "instance-name" {
  description = "The display name (and hostname) of the compute instance"
  value       = oci_core_instance.a1.display_name
}
