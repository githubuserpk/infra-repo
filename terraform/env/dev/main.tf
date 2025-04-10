resource "google_project" "create_gcp_project" {
  project_id      = var.project_id # Replace with your desired unique project ID
  name            = var.project_id # Replace with your desired project name
  billing_account = var.billing_account_id # Replace with your Google Cloud Billing Account ID
  org_id     = "1014571956575"
  auto_create_network = false
}

resource local_file sample_res {
  filename = "sample.txt" 
  content  = "sample content" 
}

#Enable apis 
resource "google_project_service" "enable_apis" {
  for_each = toset(var.apis)

  project = var.project_id
  service = each.key
}


module "networking" {
  source     = "../../modules/networking"
  project_id = var.project_id
}
