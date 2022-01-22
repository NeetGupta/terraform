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