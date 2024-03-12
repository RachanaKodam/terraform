provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "sample" {
  name                      = local.resource_group_name
  location                  = var.location
}

resource "azurerm_storage_account" "sample" {
  name                      = local.storage_account_name
  resource_group_name       = azurerm_resource_group.sample.name
  location                  = var.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}

resource "azurerm_servicebus_namespace" "sample" {
  name                      = local.servicebus_namespace_name
  location                  = var.location
  resource_group_name       = azurerm_resource_group.sample.name
  sku                       = "Standard"
}