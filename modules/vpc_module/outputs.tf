output "gateway_ip" {
  value = google_compute_subnetwork.default.gateway_address
}
output "subnet_self_link" {
  value = google_compute_subnetwork.default.self_link
}

output "subnet_id" {
  value = google_compute_subnetwork.default.id
}

output "google_compute_network_name" {
  value = google_compute_network.default.name
}

output "google_compute_subnetwork_name" {
  value = google_compute_subnetwork.default.name
}

output "google_compute_subnetwork_id" {
  value = google_compute_subnetwork.default.id
}