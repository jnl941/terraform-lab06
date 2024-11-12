output "tf-vm-internal-ip" {
  value = [
    for vm in google_compute_instance.tf-vm : vm.network_interface.0.network_ip
  ]
  depends_on = [google_compute_instance.tf-vm]
}

output "tf-vm-ephemeral-ip" {
  value = [
    for vm in google_compute_instance.tf-vm : vm.network_interface.0.access_config.0.nat_ip
  ]
  depends_on = [google_compute_instance.tf-vm]
}
