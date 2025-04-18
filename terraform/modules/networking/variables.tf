variable "project_id" {
  description = "The project ID"
  type        = string
}


variable "env" {
  description = "Environment name like dev, stg, prd"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "ip_cidr_range" {
  description = "CIDR range for the subnet"
  type        = string
}


