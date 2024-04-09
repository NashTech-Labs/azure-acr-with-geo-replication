terraform{
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0"
      }
    }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name = var.ResourceGroupName
  location = var.Location
}

resource "azurerm_container_registry" "azure_container_registry" {
  name = var.ContainerRegistryName
  location = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku = "Premium"
    dynamic "georeplications" {
      for_each = var.ReplicationLocation
      content {
       location = georeplications.value
      }
    }
}