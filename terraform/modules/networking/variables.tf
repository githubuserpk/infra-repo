variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "apis" {
  description = "List of APIs to enable in the project"
  type        = list(string)
  default     = [
    "compute.googleapis.com",
    "storage.googleapis.com",
    "bigquery.googleapis.com",
    "iam.googleapis.com",
    "serviceusage.googleapis.com",
    "cloudfunctions.googleapis.com"
    #"cloudsql.googleapis.com"
    # Add more APIs here as needed
  ]
}
