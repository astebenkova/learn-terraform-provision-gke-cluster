provider "google" {
  credentials = file(var.service_key_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
