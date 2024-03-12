terraform {
  backend "azurerm" {
    resource_group_name  = "tfenvmng"
    storage_account_name = "tfstac12"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}