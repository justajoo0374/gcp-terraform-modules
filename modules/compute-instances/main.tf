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
      image = var.image
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
}
}

###############varirables
variable "project_id" {}
variable "instance"  {}
variable "machine_type" {}

