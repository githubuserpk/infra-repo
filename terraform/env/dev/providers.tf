provider "google" {
  credentials = file("../../../auth/terraform-aishift-dev-01-key.json")
  region      = "us-south1"  # or your desired region  
}
