provider "google" {
  credentials = file(var.service_key_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
provider "aws" {
  region  = "us-west-2"
  version = "~> 3.0"
  shared_credentials_file = "/home/intern1/.aws/credentials"
}
