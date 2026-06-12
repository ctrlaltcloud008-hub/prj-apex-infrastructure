resource "google_vpc_access_connector" "connector" {
  project       = var.project_id
  name          = "${var.name}-${var.environment}"
  region        = var.region
  ip_cidr_range = var.ip_cidr_range
  network       = "default"
  machine_type  = var.machine_type
  min_instances = var.min_instances
  max_instances = var.max_instances
}
