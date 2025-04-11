# Create privatenet network
resource "google_compute_network" "privatenet" {
  name                    = "privatenet"
  project                 = var.project_id
  auto_create_subnetworks = false
}

# Create privatesubnet-us subnetwork
resource "google_compute_subnetwork" "privatesubnet-us" {
  name          = "privatesubnet-us"
  region        = "us-south1"
  network       = google_compute_network.privatenet.self_link
  ip_cidr_range = "172.24.0.0/24"
  project       = var.project_id  # Pass the project_id here
}




# Create a firewall rule to allow HTTP, SSH, RDP and ICMP traffic on privatenet
resource "google_compute_firewall" "privatenet-allow-http-ssh-rdp-icmp" {
  name    = "privatenet-allow-http-ssh-rdp-icmp"
  source_ranges = [
    "0.0.0.0/0"
  ]
  network = google_compute_network.privatenet.self_link
  project       = var.project_id  # Pass the project_id here

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "3389"]
  }

  allow {
    protocol = "icmp"
  }
}


