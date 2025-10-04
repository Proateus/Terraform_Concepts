module "rg" {
    source = "../child/rg"  
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../child/vnet"
}

module "subnet" {
    depends_on = [ module.vnet ]
    source = "../child/subnet" 
    subnets = var.subnets
}

output "rg_info" {
    value = {
        name = module.rg.rg_name
        id   = module.rg.rg_id
    }
}

