# Step 1: Enable cloudresourcemanager first
resource "google_project_service" "cloudresourcemanager" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

#Enable apis 
resource "google_project_service" "enable_apis" {
  for_each = toset(var.apis)

  project = var.project_id
  service = each.key

  depends_on = [google_project_service.cloudresourcemanager]

}

