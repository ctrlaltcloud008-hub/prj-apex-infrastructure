variable "project_id" {
  type        = string
  description = "The unique identifier for the GCP project for resource organization and billing."
  validation {
    condition     = length(var.project_id) > 0
    error_message = "The project_id must not be empty."
  }
}


variable "environment" {
  type        = string
  description = "The deployment environment (e.g., dev, staging, prod) for resource organization and management."
}

variable "project_region" {
  type        = string
  default     = "asia-south1"
  description = "GCP region for all regional resources. Must match the Cloud Run service region."
}
