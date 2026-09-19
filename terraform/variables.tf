variable "vsphere_user"     { description = "vSphere username" }
variable "vsphere_password" { description = "vSphere password"; sensitive = true }
variable "vsphere_server"   { description = "vSphere server hostname/IP" }
variable "datacenter"       { default = "dc01" }
variable "datastore"        { default = "datastore01" }
variable "cluster"          { default = "cluster01" }
variable "network"          { default = "VM Network" }
variable "template"         { default = "ubuntu-22-04-template" }
variable "vm_count"         { default = 3 }
variable "vm_prefix"        { default = "k8s-node" }
variable "vm_cpus"          { default = 4 }
variable "vm_memory"        { default = 8192 }
variable "vm_disk_size"     { default = 50 }
variable "domain"           { default = "homelab.local" }