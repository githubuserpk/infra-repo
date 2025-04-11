#Enable apis 
resource "google_project_service" "enable_apis" {
  for_each = toset(var.apis)

  project = var.project_id
  service = each.key
}

module "apis" {
  source     = "../../modules/apis"
  project_id = var.project_id
  apis      = var.apis
}

module "networking" {
  source     = "../../modules/networking"
  project_id = var.project_id
}
