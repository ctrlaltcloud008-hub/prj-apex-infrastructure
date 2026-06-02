resource "google_spanner_instance" "spanner_instance" {
  project      = var.project_id
  name         = var.spanner_instance_name
  config       = var.spanner_instance_config
  num_nodes    = 2
  display_name = var.spanner_instance_display_name
  edition      = var.edition

  labels = {
    team        = "apex"
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "google_spanner_database" "spanner_database" {
  project  = var.project_id
  instance = google_spanner_instance.spanner_instance.name
  name     = var.database_name

  deletion_protection = false

  version_retention_period = var.version_retention_period
}
