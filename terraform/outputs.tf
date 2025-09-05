output "vm_external_ip" {
  value       = module.tf_yc_instance.vm_external_ip
}

output "vm_internal_ip" {
  value       = module.tf_yc_instance.vm_internal_ip
}

output "network_id" {
  value       = module.tf_yc_network.network_id
}

output "subnet_id" {
  value       = module.tf_yc_network.subnet_id
}
