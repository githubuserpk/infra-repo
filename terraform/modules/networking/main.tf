# Create VPC network
resource "google_compute_network" "vpc_network" {
  name                    = "vpc-int-${var.region}-${var.env}"
  project                 = var.project_id
  auto_create_subnetworks = false
  description             = "Custom VPC for ${var.env} in ${var.region}"
}

# Create Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "subnet-int-${var.region}-${var.env}"
  region        = var.region
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.ip_cidr_range
  project       = var.project_id
  description    = "Subnet for ${var.env} in ${var.region}"
}



# Create a firewall rule to allow HTTP, SSH, RDP and ICMP traffic on privatenet
resource "google_compute_firewall" "allow-http-ssh-rdp-icmp" {
  name          = "allow-http-ssh-rdp-icmp-${var.region}-${var.env}"
  network       = google_compute_network.vpc_network.id
  project       = var.project_id
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "3389"]
  }

  allow {
    protocol = "icmp"
  }

  description = "Allow essential traffic for ${var.env} in ${var.region}"
}


