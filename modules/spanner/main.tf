resource "google_spanner_instance" "spanner_instance" {
  project      = var.project_id
  name         = var.spanner_instance_name
  config       = var.spanner_instance_config
  display_name = var.spanner_instance_display_name
  edition      = var.edition

  labels = {
    team        = "apex"
    environment = var.environment
    managed_by  = "terraform"
  }
}
