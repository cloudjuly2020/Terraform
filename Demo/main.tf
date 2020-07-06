provider "azurerm" {
  version = "=2.0.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "resource_gp" {
  name     = "skylines"
  location = "west Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "sl"
  resource_group_name = azurerm_resource_group.resource_gp.name
  location            = azurerm_resource_group.resource_gp.location
  address_space       = ["10.0.0.0/16"]
}
