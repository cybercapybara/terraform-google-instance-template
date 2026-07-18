resource "google_compute_instance_template" "this" {
  project      = var.project_id
  name_prefix  = var.name_prefix
  machine_type = var.machine_type
  region       = var.region
  tags         = var.tags
  metadata     = var.metadata
  labels       = var.labels

  disk {
    source_image = var.image
    disk_size_gb = var.disk_size_gb
    boot         = true
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

  lifecycle {
    create_before_destroy = true
  }
}
