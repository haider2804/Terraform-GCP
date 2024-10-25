output "network_id" {
  value = module.network.network_id
}

output "firewall_rule" {
  value = module.firewall.firewall_name
}

output "vm_instance_name" {
  value = module.vm_instance.instance_name
}
