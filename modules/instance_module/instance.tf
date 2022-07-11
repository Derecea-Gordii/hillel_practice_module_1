#-----------------------------------

resource "google_compute_address" "internal_with_subnet_and_address" {
  name         = var.internal-address_name
  subnetwork   = var.google_compute_subnetwork_id
  address_type = "INTERNAL"
  address      = "10.0.42.42"
  region       = var.region
}

#-----------------------------------

resource "google_compute_disk" "default" {
  name  = var.disk_name
  type  = var.disk_type
  zone  = var.zone
  physical_block_size_bytes = var.compute_disk_size_bytes
}

#-----------------------------------

resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.default.id
  instance = google_compute_instance.default.id
}

resource "google_compute_instance" "default" {
  name         = var.attached-disk-instance_name
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network = var.google_compute_network_name
    subnetwork = var.google_compute_subnetwork_name
  }

  metadata_startup_script = var.startup_script_path
}