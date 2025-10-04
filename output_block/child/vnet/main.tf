resource "azurerm_virtual_network" "vnet" {
    name = "ping-pong-vnet"
    location = "East US"
    resource_group_name = "ping-pong-rg"
    address_space       = ["10.0.0.0/16"]
}