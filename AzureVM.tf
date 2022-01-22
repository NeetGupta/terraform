terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "Terraform-Resource" "{ResourceGroup}" {
  name = "{ResourceGroup}"
  loation = "eastus"
}
resource "azurerm_virtual_network" "{VirtualNetwork}" {
  name                = "{VirtualNetwork}"
  address_space       = ["10.1.0.0/24"]
  location            = azurerm_resource_group.{ResourceGroup}.location
  resource_group_name = azurerm_resource_group.{ResourceGroup}.name
}

resource "azurerm_subnet" "{Subnet}" {
  name                 = "{Subnet}"
  resource_group_name  = azurerm_resource_group.{ResourceGroup}.name
  virtual_network_name = azurerm_virtual_network.{VirtualNetwork}.name
  address_prefixes     = ["10.5.0.0/26"]