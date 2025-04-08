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
