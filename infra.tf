module "azure_rg" {
  source   = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "vnet" {
  source              = "./modules/vnet"
  vnet_name = var.vnet_name
  vnet_cidr = var.vnet_cidr
  resource_group_name = module.azure_rg.azurerm_resource_group_name
  location = var.location
  subnet_name = "subnet-1"
  subnet_cidr = var.subnet_cidr
}

// module "vm" {
//   source              = "./modules/vm"
//   resource_group_name = module.azure_rg.azurerm_resource_group_name
//   location            = var.location
//   vm_size             = var.vm_size
//   subnet_cidr         = ["10.16.16.0/20"]
//   subnet_id           = module.vnet.subnet_id
// }
