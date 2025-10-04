resource "azurerm_subnet" "subnet" {
    for_each = var.subnets
    name                 = each.key
    resource_group_name  = "ping-pong-rg"
    virtual_network_name = "ping-pong-vnet"
    address_prefixes    = each.value
}



  
