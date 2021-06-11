output "rg_name" {
  value = azurerm_resource_group.base.name
}

output "rg_location" {
  value = azurerm_resource_group.base.location
}

output "rg_object" {
  value = azurerm_resource_group.base
}