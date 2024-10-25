variable "vm_name" {
  description = "Name of the VM instance"
  type        = string
}

variable "vm_machine_type" {
  description = "Machine type for the VM"
  type        = string
}

variable "vm_zone" {
  description = "GCP zone for the VM"
  type        = string
}

variable "network_id" {
  description = "The network ID to which the VM will connect"
  type        = string
}
