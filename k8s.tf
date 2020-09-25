resource "google_container_cluster" "primary" {
  name = "k8s-cka"
  initial_node_count = 3
  master_auth {
    username = var.master_username
    password = var.master_password
  }
  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials k8s-cka --zone=${var.zone}"
  }
}

resource "google_compute_disk" "k8s_cka_disk" {
  name  = "mongodb"
  zone  = var.zone
  type  = "pd-standard"
	
  size  = 1
  physical_block_size_bytes = 4096
}
