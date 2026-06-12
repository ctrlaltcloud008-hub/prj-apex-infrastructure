resource "google_redis_instance" "redis" {
  project        = var.project_id
  name           = "${var.instance_name}-${var.environment}"
  tier           = var.tier
  memory_size_gb = var.memory_size_gb
  region         = var.region
  redis_version  = var.redis_version

  labels = {
    team        = "apex"
    environment = var.environment
    managed_by  = "terraform"
  }
}
