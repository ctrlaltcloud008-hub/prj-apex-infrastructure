module "spanner" {
  source      = "../../modules/spanner"
  project_id  = var.project_id
  environment = var.environment
}

module "redis" {
  source      = "../../modules/redis"
  project_id  = var.project_id
  environment = var.environment
  region      = var.project_region
}

module "vpc_connector" {
  source      = "../../modules/vpc_connector"
  project_id  = var.project_id
  environment = var.environment
  region      = var.project_region
}
