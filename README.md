# OCI free tier A1 compute

OCI offers a free forever (?) account where there is a number of A1 cpus available for use
This repo contains sample terraform code to spin up the largest one available in the free tier (4 ocpu, 24GB of memory).
It will generate a compartment for all the resources, a vcn, a private and public subnet and sample security lists for each. It will also provide a public ip where you can use to ssh to the machine.
As is it will try to use the latest available Canonical ubuntu image.

# Prerequisites
- an OCI account
- a set of public/private key for ssh (use ssh-keygen for this)

# known issues
- vcn module version above 3.3.0 fails
# terraform-docs generated using github action
-----
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vcn"></a> [vcn](#module\_vcn) | oracle-terraform-modules/vcn/oci | 3.3.0 |

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.a1](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_security_list.private-security-list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_security_list.public-security-list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_subnet.vcn-private-subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_subnet.vcn-public-subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_identity_compartment.tf-compartment](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment) | resource |
| [oci_core_images.os](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_images) | data source |
| [oci_identity_availability_domains.ads](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_availability_domains) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | Create a compartment for terraform generated resources | `any` | `null` | no |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | Your OCI private key fingerprint | `string` | n/a | yes |
| <a name="input_operating_system"></a> [operating\_system](#input\_operating\_system) | The Operating System of the platform image to use. Valid values are "Canonical Ubuntu", "Oracle Linux", or "Oracle Linux Cloud Developer". | `string` | `"Canonical Ubuntu"` | no |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | Your OCI key path | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region of your OCI account | `string` | n/a | yes |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | SSH authorised keys to add in authorised keys in the VM. Normally just a .pub is sufficient. | `any` | n/a | yes |
| <a name="input_ssh_private_key_path"></a> [ssh\_private\_key\_path](#input\_ssh\_private\_key\_path) | The filename to your private key matching a key in authorised keys. Is used by any remote exec provisioner. | `any` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | Your OCI tenant ocid. | `string` | n/a | yes |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | Your OCI user ocid. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id-for-for-route-table-that-includes-the-nat-gateway"></a> [id-for-for-route-table-that-includes-the-nat-gateway](#output\_id-for-for-route-table-that-includes-the-nat-gateway) | OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway. |
| <a name="output_id-for-route-table-that-includes-the-internet-gateway"></a> [id-for-route-table-that-includes-the-internet-gateway](#output\_id-for-route-table-that-includes-the-internet-gateway) | OCID of the internet-route table. This route table has an internet gateway to be used for public subnets |
| <a name="output_instance-OCPUs"></a> [instance-OCPUs](#output\_instance-OCPUs) | n/a |
| <a name="output_instance-memory-in-GBs"></a> [instance-memory-in-GBs](#output\_instance-memory-in-GBs) | n/a |
| <a name="output_instance-name"></a> [instance-name](#output\_instance-name) | The display name (and hostname) of the compute instance |
| <a name="output_instance-shape"></a> [instance-shape](#output\_instance-shape) | n/a |
| <a name="output_instance-state"></a> [instance-state](#output\_instance-state) | n/a |
| <a name="output_name-of-first-availability-domain"></a> [name-of-first-availability-domain](#output\_name-of-first-availability-domain) | The "name" of the availability domain to be used for the compute instance. |
| <a name="output_nat-gateway-id"></a> [nat-gateway-id](#output\_nat-gateway-id) | OCID for NAT gateway |
| <a name="output_os_image_used"></a> [os\_image\_used](#output\_os\_image\_used) | n/a |
| <a name="output_private-security-list-OCID"></a> [private-security-list-OCID](#output\_private-security-list-OCID) | n/a |
| <a name="output_private-security-list-name"></a> [private-security-list-name](#output\_private-security-list-name) | Outputs for private security list |
| <a name="output_private-subnet-OCID"></a> [private-subnet-OCID](#output\_private-subnet-OCID) | n/a |
| <a name="output_private-subnet-name"></a> [private-subnet-name](#output\_private-subnet-name) | Outputs for private subnet |
| <a name="output_public-ip-for-arm-ubuntu"></a> [public-ip-for-arm-ubuntu](#output\_public-ip-for-arm-ubuntu) | The public ip of the compute instance |
| <a name="output_public-security-list-OCID"></a> [public-security-list-OCID](#output\_public-security-list-OCID) | n/a |
| <a name="output_public-security-list-name"></a> [public-security-list-name](#output\_public-security-list-name) | Outputs for public security list |
| <a name="output_public-subnet-OCID"></a> [public-subnet-OCID](#output\_public-subnet-OCID) | n/a |
| <a name="output_public-subnet-name"></a> [public-subnet-name](#output\_public-subnet-name) | Outputs for public subnet |
| <a name="output_time-created"></a> [time-created](#output\_time-created) | n/a |
| <a name="output_vcn_id"></a> [vcn\_id](#output\_vcn\_id) | OCID of the VCN that is created |
<!-- END_TF_DOCS -->