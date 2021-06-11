resource "azurerm_virtual_network" "base" {
    for_each = var.networking_config

    name = each.value.name
    resource_group_name = var.resourcegroup.name
    location = var.resourcegroup.location
    address_space = each.value.address_prefix
}