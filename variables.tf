#variable blocks declare variables (google_credentials, project_id, and region) with description and type. The default value in region assigns "us-central1" if no other value is provided.
variable "google_credentials" {
  description = "Path to the GCP service account JSON key file"
  type        = string
}

variable "project_id" { #this will directly fetch the value of project_id from terraform.tfvars
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  default     = "us-central1"
  type        = string
}

