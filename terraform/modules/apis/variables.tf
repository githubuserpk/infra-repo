variable "apis" {
  description = "List of APIs to enable in the project"
  type        = list(string)
}

variable "project_id" {
  description = "The project ID"
  type        = string
}
