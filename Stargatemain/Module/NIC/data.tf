data "azurerm_subnet" "datasubnet" {
    name = "Stargate-Datad-subnet"
    resource_group_name = "Stargate-Data"
    virtual_network_name = "Stargate-Data-Vnet"
}

data "azurerm_public_ip" "datapubip" {
    name = "Stargate-Date-data-pubip"
    resource_group_name = "Stargate-Data"  
}
