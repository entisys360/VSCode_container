# resource "azurerm_resource_group" "rg" {
#   for_each = var.global_config
#   name = each.value.name
#   location = each.value.location
# }

module "rgs" {
  source = "./modules/terraform-azurerm-resourcegroup"
  rg_name = var.global_config.rg1.name
  rg_location = var.global_config.rg1.location
}

# resource "azurerm_virtual_network" "basevn" {
#   name = var.networking_config.network1.name
#   location = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#   address_space = var.networking_config.network1.address_prefix

# }

module "vnets" {
  source = "./modules/terraform-azurerm-vnet"
  networking_config = var.networking_config
  resourcegroup = module.rgs.rg_object
}

# resource "azurerm_subnet" "vn_subnet" {
#   name = var.networking_config.network1.subnets.subnet1.name
#   virtual_network_name = azurerm_virtual_network.basevn.name
#   address_prefixes = var.networking_config.network1.subnets.subnet1.prefix
#   resource_group_name = azurerm_resource_group.rg.name
# }


output "vnets" {
  value = module.vnets
}