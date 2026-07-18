output "id" {
  description = "Identifier of the instance template."
  value       = google_compute_instance_template.this.id
}

output "self_link" {
  description = "URI of the instance template."
  value       = google_compute_instance_template.this.self_link
}

output "name" {
  description = "Generated name of the instance template."
  value       = google_compute_instance_template.this.name
}
