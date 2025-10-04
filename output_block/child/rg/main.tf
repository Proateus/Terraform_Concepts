resource "azurerm_resource_group" "rg" {
    name = "ping-pong-rg"
    location = "East US"  
}

output "rg_id" {
  value = azurerm_resource_group.rg.id
}

output "rg_name" {
    value = azurerm_resource_group.rg.name
}