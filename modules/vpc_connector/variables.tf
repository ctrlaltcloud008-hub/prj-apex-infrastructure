variable "project_id" {
  type        = string
  description = "GCP project ID."
}

variable "environment" {
  type        = string
  description = "Deployment environment (e.g., development, production)."
}

variable "name" {
  type        = string
  default     = "apex-vpc-conn"
  description = "Base name for the VPC connector."
}

variable "region" {
  type        = string
  description = "GCP region for the VPC Access connector. Must match the Cloud Run service region."
}

variable "ip_cidr_range" {
  type        = string
  default     = "10.8.0.0/28"
  description = "Unused /28 CIDR range in the default VPC for the connector."
}

variable "machine_type" {
  type        = string
  default     = "e2-micro"
  description = "Machine type for connector instances. e2-micro is sufficient for most workloads."
}

variable "min_instances" {
  type        = number
  default     = 2
  description = "Minimum number of connector instances (minimum allowed is 2)."
}

variable "max_instances" {
  type        = number
  default     = 3
  description = "Maximum number of connector instances."
}
