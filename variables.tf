variable "name" {}

variable "backend" {}

variable "binding_rules" {}

variable "list_namespaces" {
  default = false
}

variable "view_nodes" {
  default = false
}

variable "credential_type" {
  default = "certificate"
}

variable "serviceaccount_namespace" {
  default = "kube-system"
}

variable "ttl" {
  default = 0
}

variable "max_ttl" {
  default = 0
}