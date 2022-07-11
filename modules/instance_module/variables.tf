variable "internal-address_name" {
  default = "my-address"
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "disk_name" {
  default = "my-disk"
  type = string
}

variable "disk_type" {
  default = "pd-balanced"
  type = string
}

variable "compute_disk_size_bytes" {
  type = number
}

variable "attached-disk-instance_name" {
  default = "my-disk-instance"
  type = string
}

variable "instance_image" {
  default = "debian-cloud/debian-9"
  type = string
}

variable "startup_script_path" {
  type = string
}

variable "google_compute_network_name" {
  type = string
}

variable "google_compute_subnetwork_name" {
  type = string
}

variable "google_compute_subnetwork_id" {
  type = string
}