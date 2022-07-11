variable "zone" {
  description = "GCP zone"
  type = string
}

variable "key" {
  description= "path to json key to service account"
  type = string
}

variable "region" {
  type = string
  description = "GCP region"
}
