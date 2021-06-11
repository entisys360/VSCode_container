# rg_name = "rg1"


# vnet_name = "vnet2"

# vnet_prefix =  ["10.0.0.0/24"]


# subnet_name = "sub1"


# subnet_prefix = ["10.0.0.0/28"]


# rg_location = "westus2"


global_config  = {
    rg1 = {
        name = "devsecops0"
        location = "westus2"
    }
    rg2 = {
        name = "devsecops1"
        location = "westus2"
    }
    rg3 = {
        name = "devsecops2"
        location = "westus2"
    }
    rg4 = {
        name = "devsecops4"
        location = "westus2"
    }
    rg5 = {
        name = "devsecops4"
        location = "westus2"
    }
}

networking_config = {
    network1 = {
        name = "vnet1"
        address_prefix = ["10.0.1.0/24"]
        subnets = {
            subnet1 = {
                name = "subnet1"
                prefix = ["10.0.1.0/28"]
            }
        }
    }
    network2 = {
        name = "vnet2"
        address_prefix = ["10.0.2.0/24"] 
        subnets = {
            subnet1 = {
                name = "subnet2"
                prefix = ["10.0.2.0/28"]
            }
            
        }
    }
}