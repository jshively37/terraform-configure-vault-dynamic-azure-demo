resource "vault_azure_secret_backend" "azure" {
  use_microsoft_graph_api = true
  subscription_id         = var.subscription_id
  tenant_id               = var.tenant_id
  client_secret           = var.client_secret
  client_id               = var.client_id
}

resource "vault_azure_secret_backend_role" "demo_role" {
  backend = vault_azure_secret_backend.azure.path
  role    = var.azure_role
  ttl     = 300  # Default to 5 minutes
  max_ttl = 600  # Renewable up to 10 minutes

  azure_roles {
    role_name = "Contributor"
    scope     = "/subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group}"
  }
}
