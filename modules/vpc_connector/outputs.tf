output "name" {
  description = "The short name of the VPC Access connector."
  value       = google_vpc_access_connector.connector.name
}

output "self_link" {
  description = "The fully-qualified resource name of the VPC Access connector."
  value       = google_vpc_access_connector.connector.self_link
}
