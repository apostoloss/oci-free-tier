
# The "name" of the availability domain to be used for the compute instance.
output "name-of-first-availability-domain" {
  value = data.oci_identity_availability_domains.ads.availability_domains[0].name
}

# Outputs for compute instance

output "instance-shape" {
  value = oci_core_instance.a1.shape
}

output "instance-state" {
  value = oci_core_instance.a1.state
}

output "instance-OCPUs" {
  value = oci_core_instance.a1.shape_config[0].ocpus
}

output "instance-memory-in-GBs" {
  value = oci_core_instance.a1.shape_config[0].memory_in_gbs
}

output "time-created" {
  value = oci_core_instance.a1.time_created
}