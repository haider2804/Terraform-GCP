resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network_id
    access_config {
    }
  }

  metadata_startup_script = file("${path.module}/startup-script.sh")
}
