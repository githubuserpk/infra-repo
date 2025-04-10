# variables.tf

variable "project_id" {
  type        = string
  description = "The unique ID of the Google Cloud Project to create"
}

variable "billing_account_id" {
  type        = string
  description = "The Billing account id"
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
