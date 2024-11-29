resource "azurerm_linux_virtual_machine" "VM" {
    for_each = var.VM
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    admin_username = data.azurerm_key_vault_secret.Datausersecret.value
    admin_password = data.azurerm_key_vault_secret.Datapasswordsecret.value
    disable_password_authentication = each.value.disable_password_authentication
    network_interface_ids = [data.azurerm_network_interface.DataNIC.id]
    size = each.value.size

    os_disk {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    }
}