resource "google_compute_network" "default" {
  name = var.compute_network_name
}

resource "google_compute_subnetwork" "default" {
  name          = var.subnetwork_name
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.default.id
}