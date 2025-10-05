resource "azurerm_resource_group" "rg" {
    name = "ping-pong-rg-1"
    location = "Central US"  
    lifecycle {
    create_before_destroy = true
    prevent_destroy = true
    ignore_changes = [name]
    }
}