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

# module "org_iam" {
#   source     = "./modules/org_iam"
#   project_id = var.project_id
#   infra_roles = var.infra_roles
# }

# module "logging" {
#   source     = "./modules/logging"
# }
