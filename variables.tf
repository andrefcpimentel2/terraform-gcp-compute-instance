variable "gcp_project" {
  description = "GCP project name"
}

variable "gcp_region" {
 description = "GCP region"
 default = "europe-west3"
}

variable "cust_name" {
  description = "Customer name"
  default = "demo"
}

variable "instance_type" {
description = "GCP machine type"
default     = "n1-standard-4"
}

variable "owner" {
description = "IAM user responsible for lifecycle of cloud resources used for training"
default = "terraform"
}

variable "created-by" {
description = "Tag used to identify resources created programmatically by Terraform"
default     = "terraform"
}

variable "sleep-at-night" {
description = "Tag used by reaper to identify resources that can be shutdown at night"
default     = true
}

variable "TTL" {
description = "Hours after which resource expires, used by reaper. Do not use any unit. -1 is infinite."
default     = "240"
}

variable "image" {
description = "image to build instance from"
default     = "ubuntu-os-cloud/ubuntu-1604-lts"
}

variable "network-sub" {
  description = "Computed Subnetwork link"
}