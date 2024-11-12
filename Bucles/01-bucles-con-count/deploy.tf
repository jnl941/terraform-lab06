resource "google_compute_instance" "tf-vm" {
  count = length(var.instances)

  name         = var.instances[count.index].name
  zone         = var.gcp-zone
  machine_type = var.instances[count.index].machine_type
  boot_disk {
    initialize_params {
      image = var.instances[count.index].image
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


