provider "google" {
  credentials = file("../../../auth/terraform-dev-key.json")
  region      = "us-south1"  # or your desired region  
}