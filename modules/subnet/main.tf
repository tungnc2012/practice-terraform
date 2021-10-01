resource "azurerm_subnet" "subnet" {
  name                 = var.subnet.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet-cidr
}

resource "azurerm_subnet" "subnet-2" {
  name                 = var.subnet.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet-cidr
}