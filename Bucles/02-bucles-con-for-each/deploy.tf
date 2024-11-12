resource "google_compute_instance" "tf-vm" {
  for_each = var.instances

  name         = each.value.name
  zone         = var.gcp-zone
  machine_type = each.value.machine_type
  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }

  # Add SSH access to the Compute Engine instance
  metadata = {
    ssh-keys = "${var.gcp-username}:${file("~/.ssh/id_rsa.pub")}"
  }

  # Startup script
  # metadata_startup_script = "${file("script.sh")}"

  network_interface {
    network    = var.gcp-network
    subnetwork = var.gcp-network

    access_config {}
  }
}


