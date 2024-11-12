output "database_external_ip" {
  value = module.database.tf-vm-ephemeral-ip
}

output "web-server_external_ip" {
  value = module.web-server.tf-vm-ephemeral-ip
}

output "database_internal_ip" {
  value = module.database.tf-vm-internal-ip
}

output "web-server_internal_ip" {
  value = module.web-server.tf-vm-internal-ip
}
