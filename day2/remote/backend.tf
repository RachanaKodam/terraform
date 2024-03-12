terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatefile12"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}