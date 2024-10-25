resource "google_compute_firewall" "allow_ssh" {
  name    = var.firewall_name #Provided by the client when the resource is created.
  network = var.network_id #The name or self_link of the network to attach this firewall to.

  allow { 
    #The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
    protocol = "tcp"
    ports    = ["22", "80", "8080", "1000-2000"]
  }

  allow { 
    #The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
    protocol = "icmp"
  }
  # Allow all IP addresses (for testing purposes only)
  source_ranges = ["0.0.0.0/0"]


}
