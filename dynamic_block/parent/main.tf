module "rg" {
    source = "../child/rg"  
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../child/vnet"
    subnets = var.subnets
}

output "rg_info" {
    value = {
        name = module.rg.rg_name
        id   = module.rg.rg_id
    }
}

