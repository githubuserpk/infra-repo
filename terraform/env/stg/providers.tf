provider "google" {
  credentials = file("../../../auth/terraform-aishift-stg-01-key.json")
  region      = "us-south1" # or your desired region  
}
