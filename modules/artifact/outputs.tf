output "artifact_name" {
  value       = local.artifact_name
  description = "Standardized artifact name (app-env)."
}

output "file_path" {
  value       = local_file.artifact.filename
  description = "Path to the generated file."
}

output "tags" {
  value       = local.tags
  description = "Standard tags produced by the module."
}