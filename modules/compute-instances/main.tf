provider "google" {
  project = var.project_id
  # Configuration options
}

resource "google_compute_instance" "default" {
  name         = var.instance
  machine_type = var.machine_type
  zone         = var.zone
  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
}
}
