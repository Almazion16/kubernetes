module "tf_yc_network" {
  source        = "./modules/tf-yc-network"
  network_zones = [var.yc_zone]
}

module "tf_yc_instance" {
  source = "./modules/tf-yc-instance"

  vm_name         = var.vm_name
  vm_user         = var.vm_user
  ssh_public_keys = var.ssh_public_keys
  zone            = var.yc_zone
  subnet_id       = module.tf_yc_network.subnet_id
}
