resource "vault_generic_endpoint" "this" {
  path = "${try(var.backend.path, var.backend)}/role/${var.name}"
  ignore_absent_fields = true
  disable_read = true
  data_json = jsonencode({
    binding_rules = var.binding_rules
    list_namespaces = var.list_namespaces
    view_nodes = var.view_nodes
    credentials_type = var.credential_type
    serviceaccount_namespace = var.serviceaccount_namespace
    ttl = var.ttl
    max_ttl = var.max_ttl
  })
}