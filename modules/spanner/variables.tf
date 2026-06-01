variable "project_id" {
  type        = string
  description = "The unique identifier for the GCP project for resource organization and billing."
  validation {
    condition     = length(var.project_id) > 0
    error_message = "The project_id must not be empty."
  }
}

variable "spanner_instance_name" {
  type        = string
  description = "The unique name for the Spanner instance, used for identification within the project."
  default     = "apex-spanner-instance"
}

variable "spanner_instance_config" {
  type        = string
  description = "The configuration for the Spanner instance, specifying the region and node count."
  default     = "regional-asia-southeast1"
}

variable "spanner_instance_display_name" {
  type        = string
  description = "The display name for the Spanner instance, shown in the GCP Console."
  default     = "Apex Spanner Instance"
}

variable "edition" {
  type        = string
  description = "The edition of Spanner to use, determining the feature set and performance characteristics."
  default     = "STANDARD"
}

variable "environment" {
  type        = string
  description = "The deployment environment (e.g., dev, staging, prod) for resource organization and management."
}
