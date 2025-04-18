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
  source         = "../../modules/networking"
  project_id     = var.project_id
  env            = var.env
  region         = var.region
  ip_cidr_range  = var.cidr_range
}



# Additional EU-only dev network (europe-west2)
# module "networking_eu" {
#   source         = "../../modules/networking"
#   project_id     = var.project_id
#   env            = var.env
#   region         = "europe-west2"
#   ip_cidr_range  = var.eu_cidr_range
# }


