module "network" { #connects with /modules/network. Calls the network module and sets network_id = "my-network".
  source     = "./modules/network"
  network_id = "my-network" #since there is no specific ID mentioned here or in the module files of Network, this will select the default
}

module "firewall" { #Calls the firewall module, passing the network_id from the network module output. This connects firewall to the VPC created in network.
  source       = "./modules/firewall"
  network_id   = module.network.network_id
  firewall_name = "allow-ssh"
}

module "vm_instance" { #Calls the vm_instance module and passes network and VM-specific details.
  source          = "./modules/vm_instance"
  vm_name         = "my-gcp-vm"
  vm_machine_type = "f1-micro"  # Free tier eligible
  vm_zone         = "us-central1-a"
  network_id      = module.network.network_id
}