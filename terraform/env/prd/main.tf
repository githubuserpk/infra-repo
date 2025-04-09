resource "google_project" "create_gcp_project" {
  project_id      = var.project_id # New project ID
  name            = var.project_id # Project name
  billing_account = var.billing_account_id # Billing id
  org_id          =  var.org_id # organization ID
  auto_create_network = false
}
