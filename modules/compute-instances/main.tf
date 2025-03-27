provider "google" {
  project = "magnetic-flare-454316-h0"
  # Configuration options
}

resource "google_compute_instance" "default" {
  name         = "my-instance15"
  machine_type = "n2-standard-2"
  zone         = "us-central1-b"
  project = "magnetic-flare-454316-h0"

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
