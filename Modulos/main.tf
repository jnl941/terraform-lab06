module "database" {
  source         = "./instance-module"
  instance-name  = var.instances.database.name
  machine-type   = var.instances.database.machine_type
  image          = var.instances.database.image
  gcp-zone       = var.gcp-zone
  gcp-username   = var.gcp-username
  gcp-network    = var.gcp-network
  gcp-subnetwork = var.gcp-subnetwork
}

module "web-server" {
  source         = "./instance-module"
  instance-name  = var.instances.web-server.name
  machine-type   = var.instances.web-server.machine_type
  image          = var.instances.web-server.image
  gcp-zone       = var.gcp-zone
  gcp-username   = var.gcp-username
  gcp-network    = var.gcp-network
  gcp-subnetwork = var.gcp-subnetwork
}
