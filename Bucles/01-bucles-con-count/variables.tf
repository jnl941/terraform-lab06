variable "gcp-username" {
  description = "GCP user name"
}

variable "gcp-project" {
  description = "GCP project"
}

variable "gcp-region" {
  description = "GCP region"

}

variable "gcp-zone" {
  description = "GCP zone"
}

variable "gcp-network" {
  description = "GCP network"
}

variable "gcp-subnetwork" {
  description = "GCP subnetwork"
}

variable "instances" {
  description = "Number of instances to create"
  type = list(object({
    name         = string,
    machine_type = string,
    image        = string
  }))
}
