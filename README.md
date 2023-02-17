## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.107.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vcn"></a> [vcn](#module\_vcn) | oracle-terraform-modules/vcn/oci | 3.1.0 |

## Resources

| Name | Type |
|------|------|
| [null_resource.add_docker_repo](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.install_docker](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.remote-exec_a1](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [oci_core_instance.a1](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_security_list.private-security-list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_security_list.public-security-list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_subnet.vcn-private-subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_subnet.vcn-public-subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_identity_compartment.tf-compartment](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment) | resource |
| [oci_core_images.os](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_images) | data source |
| [oci_core_shapes.test_shapes](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_shapes) | data source |
| [oci_identity_availability_domains.ads](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_availability_domains) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | n/a | `any` | `null` | no |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | n/a | `any` | n/a | yes |
| <a name="input_operating_system"></a> [operating\_system](#input\_operating\_system) | The Operating System of the platform image to use. Valid values are "Canonical Ubuntu", "Oracle Linux", or "Oracle Linux Cloud Developer". | `string` | n/a | yes |
| <a name="input_operating_system_version"></a> [operating\_system\_version](#input\_operating\_system\_version) | The version of the Operating System specified in `operating_system`. | `string` | n/a | yes |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | n/a | `any` | n/a | yes |
| <a name="input_ssh_private_key_path"></a> [ssh\_private\_key\_path](#input\_ssh\_private\_key\_path) | n/a | `any` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | n/a | `any` | n/a | yes |
| <a name="input_ubuntu_image_id"></a> [ubuntu\_image\_id](#input\_ubuntu\_image\_id) | n/a | `map(any)` | <pre>{<br>  "eu-frankfurt-1": "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaadlurdwl77zh7l5dlngngxjormr3xvqvapiaiv6gbuffo6dzfu6la",<br>  "us-ashburn-1": "ocid1.image.oc1.iad.aaaaaaaaos5ofuq26nipxcybznimsjnhyw3jf7mrq2r3kgpsf6zqbtqei25q"<br>}</pre> | no |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_compartment-OCID"></a> [compartment-OCID](#output\_compartment-OCID) | n/a |
| <a name="output_compartment-name"></a> [compartment-name](#output\_compartment-name) | n/a |
| <a name="output_id-for-for-route-table-that-includes-the-nat-gateway"></a> [id-for-for-route-table-that-includes-the-nat-gateway](#output\_id-for-for-route-table-that-includes-the-nat-gateway) | OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway. |
| <a name="output_id-for-route-table-that-includes-the-internet-gateway"></a> [id-for-route-table-that-includes-the-internet-gateway](#output\_id-for-route-table-that-includes-the-internet-gateway) | OCID of the internet-route table. This route table has an internet gateway to be used for public subnets |
| <a name="output_instance-OCID"></a> [instance-OCID](#output\_instance-OCID) | n/a |
| <a name="output_instance-OCPUs"></a> [instance-OCPUs](#output\_instance-OCPUs) | n/a |
| <a name="output_instance-memory-in-GBs"></a> [instance-memory-in-GBs](#output\_instance-memory-in-GBs) | n/a |
| <a name="output_instance-name"></a> [instance-name](#output\_instance-name) | n/a |
| <a name="output_instance-region"></a> [instance-region](#output\_instance-region) | n/a |
| <a name="output_instance-shape"></a> [instance-shape](#output\_instance-shape) | n/a |
| <a name="output_instance-state"></a> [instance-state](#output\_instance-state) | n/a |
| <a name="output_name-of-first-availability-domain"></a> [name-of-first-availability-domain](#output\_name-of-first-availability-domain) | The "name" of the availability domain to be used for the compute instance. |
| <a name="output_nat-gateway-id"></a> [nat-gateway-id](#output\_nat-gateway-id) | OCID for NAT gateway |
| <a name="output_os_images"></a> [os\_images](#output\_os\_images) | n/a |
| <a name="output_private-security-list-OCID"></a> [private-security-list-OCID](#output\_private-security-list-OCID) | n/a |
| <a name="output_private-security-list-name"></a> [private-security-list-name](#output\_private-security-list-name) | Outputs for private security list |
| <a name="output_private-subnet-OCID"></a> [private-subnet-OCID](#output\_private-subnet-OCID) | n/a |
| <a name="output_private-subnet-name"></a> [private-subnet-name](#output\_private-subnet-name) | Outputs for private subnet |
| <a name="output_public-ip-for-arm-ubuntu"></a> [public-ip-for-arm-ubuntu](#output\_public-ip-for-arm-ubuntu) | n/a |
| <a name="output_public-ip-for-compute-instance"></a> [public-ip-for-compute-instance](#output\_public-ip-for-compute-instance) | n/a |
| <a name="output_public-security-list-OCID"></a> [public-security-list-OCID](#output\_public-security-list-OCID) | n/a |
| <a name="output_public-security-list-name"></a> [public-security-list-name](#output\_public-security-list-name) | Outputs for public security list |
| <a name="output_public-subnet-OCID"></a> [public-subnet-OCID](#output\_public-subnet-OCID) | n/a |
| <a name="output_public-subnet-name"></a> [public-subnet-name](#output\_public-subnet-name) | Outputs for public subnet |
| <a name="output_time-created"></a> [time-created](#output\_time-created) | n/a |
| <a name="output_vcn_id"></a> [vcn\_id](#output\_vcn\_id) | OCID of the VCN that is created |

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.107.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vcn"></a> [vcn](#module\_vcn) | oracle-terraform-modules/vcn/oci | 3.3.0 |

## Resources

| Name | Type |
|------|------|
| [null_resource.add_docker_repo](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.install_docker](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [oci_core_instance.a1](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_security_list.private-security-list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_security_list.public-security-list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_subnet.vcn-private-subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_subnet.vcn-public-subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_identity_compartment.tf-compartment](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment) | resource |
| [oci_core_images.os](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_images) | data source |
| [oci_core_shapes.test_shapes](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_shapes) | data source |
| [oci_identity_availability_domains.ads](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_availability_domains) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | Create a compartment for terraform generated resources | `any` | `null` | no |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | n/a | `any` | n/a | yes |
| <a name="input_operating_system"></a> [operating\_system](#input\_operating\_system) | The Operating System of the platform image to use. Valid values are "Canonical Ubuntu", "Oracle Linux", or "Oracle Linux Cloud Developer". | `string` | `"Canonical Ubuntu"` | no |
| <a name="input_perform_docker_install"></a> [perform\_docker\_install](#input\_perform\_docker\_install) | n/a | `bool` | `false` | no |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | n/a | `any` | n/a | yes |
| <a name="input_ssh_private_key_path"></a> [ssh\_private\_key\_path](#input\_ssh\_private\_key\_path) | n/a | `any` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | n/a | `any` | n/a | yes |
| <a name="input_ubuntu_image_id"></a> [ubuntu\_image\_id](#input\_ubuntu\_image\_id) | n/a | `map(any)` | <pre>{<br>  "eu-frankfurt-1": "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaadlurdwl77zh7l5dlngngxjormr3xvqvapiaiv6gbuffo6dzfu6la",<br>  "us-ashburn-1": "ocid1.image.oc1.iad.aaaaaaaaos5ofuq26nipxcybznimsjnhyw3jf7mrq2r3kgpsf6zqbtqei25q"<br>}</pre> | no |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_compartment-OCID"></a> [compartment-OCID](#output\_compartment-OCID) | n/a |
| <a name="output_compartment-name"></a> [compartment-name](#output\_compartment-name) | n/a |
| <a name="output_id-for-for-route-table-that-includes-the-nat-gateway"></a> [id-for-for-route-table-that-includes-the-nat-gateway](#output\_id-for-for-route-table-that-includes-the-nat-gateway) | OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway. |
| <a name="output_id-for-route-table-that-includes-the-internet-gateway"></a> [id-for-route-table-that-includes-the-internet-gateway](#output\_id-for-route-table-that-includes-the-internet-gateway) | OCID of the internet-route table. This route table has an internet gateway to be used for public subnets |
| <a name="output_instance-OCPUs"></a> [instance-OCPUs](#output\_instance-OCPUs) | n/a |
| <a name="output_instance-memory-in-GBs"></a> [instance-memory-in-GBs](#output\_instance-memory-in-GBs) | n/a |
| <a name="output_instance-name"></a> [instance-name](#output\_instance-name) | n/a |
| <a name="output_instance-shape"></a> [instance-shape](#output\_instance-shape) | n/a |
| <a name="output_instance-state"></a> [instance-state](#output\_instance-state) | n/a |
| <a name="output_name-of-first-availability-domain"></a> [name-of-first-availability-domain](#output\_name-of-first-availability-domain) | The "name" of the availability domain to be used for the compute instance. |
| <a name="output_nat-gateway-id"></a> [nat-gateway-id](#output\_nat-gateway-id) | OCID for NAT gateway |
| <a name="output_os_image_used"></a> [os\_image\_used](#output\_os\_image\_used) | n/a |
| <a name="output_private-security-list-OCID"></a> [private-security-list-OCID](#output\_private-security-list-OCID) | n/a |
| <a name="output_private-security-list-name"></a> [private-security-list-name](#output\_private-security-list-name) | Outputs for private security list |
| <a name="output_private-subnet-OCID"></a> [private-subnet-OCID](#output\_private-subnet-OCID) | n/a |
| <a name="output_private-subnet-name"></a> [private-subnet-name](#output\_private-subnet-name) | Outputs for private subnet |
| <a name="output_public-ip-for-arm-ubuntu"></a> [public-ip-for-arm-ubuntu](#output\_public-ip-for-arm-ubuntu) | n/a |
| <a name="output_public-security-list-OCID"></a> [public-security-list-OCID](#output\_public-security-list-OCID) | n/a |
| <a name="output_public-security-list-name"></a> [public-security-list-name](#output\_public-security-list-name) | Outputs for public security list |
| <a name="output_public-subnet-OCID"></a> [public-subnet-OCID](#output\_public-subnet-OCID) | n/a |
| <a name="output_public-subnet-name"></a> [public-subnet-name](#output\_public-subnet-name) | Outputs for public subnet |
| <a name="output_time-created"></a> [time-created](#output\_time-created) | n/a |
| <a name="output_vcn_id"></a> [vcn\_id](#output\_vcn\_id) | OCID of the VCN that is created |
<!-- END_TF_DOCS -->