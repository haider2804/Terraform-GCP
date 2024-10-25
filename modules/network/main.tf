resource "google_compute_network" "default" {
  name = var.network_id
  auto_create_subnetworks = true
}