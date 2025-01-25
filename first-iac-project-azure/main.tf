resource "azurerm_resource_group" "rg" {
  name     = "playground-iac-hmg"
  location = "brazilsouth"
  tags = {
    Iac = "True"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "playground-iac-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
  tags = {
    Iac = "True"
  }
}
