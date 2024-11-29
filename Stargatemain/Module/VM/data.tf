data "azurerm_network_interface" "DataNIC" {
    name = "Stargate-Data-NIC"
    resource_group_name = "Stargate-Data" 
}

data "azurerm_key_vault" "Datausername" {
  name = "Stargate-Key"
  resource_group_name = "Stargate-Data"
}

data "azurerm_key_vault_secret" "Datausersecret" {
  name = "VM-Username"
  key_vault_id = data.azurerm_key_vault.Datausername.id
}

data "azurerm_key_vault" "Datapassword" {
  name = "Stargate-Key"
  resource_group_name = "Stargate-Data"
}

data "azurerm_key_vault_secret" "Datapasswordsecret" {
  name = "VM-Password"
  key_vault_id = data.azurerm_key_vault.Datapassword.id 
}