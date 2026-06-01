module "spanner" {
  source      = "../../modules/spanner"
  project_id  = var.project_id
  environment = var.environment
}
