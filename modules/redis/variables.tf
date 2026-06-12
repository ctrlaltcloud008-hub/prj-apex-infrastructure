variable "project_id" {
  type        = string
  description = "GCP project ID."
  validation {
    condition     = length(var.project_id) > 0
    error_message = "project_id must not be empty."
  }
}

variable "environment" {
  type        = string
  description = "Deployment environment (e.g., development, production)."
}

variable "instance_name" {
  type        = string
  default     = "apex-redis"
  description = "Base name for the Redis instance."
}

variable "region" {
  type        = string
  default     = "asia-southeast1"
  description = "GCP region for the Redis instance."
}

variable "tier" {
  type        = string
  default     = "BASIC"
  description = "Redis service tier. BASIC = single node (cheapest). STANDARD_HA = with replica."
}

variable "memory_size_gb" {
  type        = number
  default     = 1
  description = "Memory size in GB. Minimum is 1."
}

variable "redis_version" {
  type        = string
  default     = "REDIS_7_2"
  description = "Redis version."
}
