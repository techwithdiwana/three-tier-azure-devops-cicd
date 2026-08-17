resource "azurerm_resource_group" "terraform_state" {
  name     = "rg-three-tier-tfstate"
  location = "Central India"
}

resource "azurerm_storage_account" "terraform_state" {
  name                     = "tfstate3tier${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.terraform_state.name
  location                 = azurerm_resource_group.terraform_state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version = "TLS1_2"

  public_network_access_enabled = true

  blob_properties {
    versioning_enabled = true
  }

  tags = {
    Environment = "bootstrap"
    Project     = "three-tier"
    ManagedBy   = "Terraform"
  }
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
  numeric = true
}

resource "azurerm_storage_container" "terraform_state" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.terraform_state.id
  container_access_type = "private"
}