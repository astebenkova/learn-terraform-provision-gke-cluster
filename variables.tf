variable "project_id" {
  type        = string
  description = "The ID of project related to your resource"
  default     = "long-way-267815"
}
variable "region" {
  default     = "us-central1"
}
variable "zone" {
  default     = "us-central1-f"
}
variable "gke_username" {
  default     = ""
  description = "gke username"
}
variable "gke_password" {
  default     = ""
  description = "gke password"
}
variable "gke_num_nodes" {
  default     = 3
  description = "number of gke nodes"
}
variable "service_key_file" {
  type        = string
  description = "The service account key file name, json"
  default     = "gcp_terraform_key.json"
}
variable "master_username" {
  type        = string
  default     = "arina"
}
variable "master_password" {
  type	      = string
  description = "A secure password for master node"
}
