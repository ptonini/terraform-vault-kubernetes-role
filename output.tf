output "this" {
  value = vault_generic_endpoint.this
}

output "creds_path" {
  value = "${try(var.backend.path, var.backend)}/creds/${var.name}"
}