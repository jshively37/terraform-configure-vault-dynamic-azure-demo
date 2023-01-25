variable "azure_role" {
  type        = string
  description = "The name of the Azure role"
}

variable "client_id" {
  type        = string
  description = "Azure client id"
}

variable "client_secret" {
  type        = string
  description = "Azure client secret"
}

variable "resource_group" {
  type        = string
  description = "Azure resource group"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription id"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant id"
}

variable "vault_address" {
  description = "The address/DNS of the Vault server"
  default     = "http://127.0.0.1:8200"
}

variable "vault_token" {
  type        = string
  description = "Vault token for authentication"
  default = "root"
}
