output "vm_names" {
  description = "Names of the provisioned VMs"
  value       = vsphere_virtual_machine.k8s_node[*].name
}

output "vm_ips" {
  description = "IP addresses of the provisioned VMs"
  value       = vsphere_virtual_machine.k8s_node[*].default_ip_address
}