terraform {
  backend "azurerm" {
    resource_group_name  = "rg-three-tier-tfstate"
    storage_account_name = "tfstate3tierexs6hp"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}