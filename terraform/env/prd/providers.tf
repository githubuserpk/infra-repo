provider "google" {
  credentials = file("../../../auth/terraform-prd-key.json")
  region      = "us-south1"  # or your desired region  
}
