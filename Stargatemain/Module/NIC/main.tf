resource "azurerm_network_interface" "NIC" {
    for_each = var.NIC
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
      name = "internal" 
      subnet_id = data.azurerm_subnet.datasubnet.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = data.azurerm_subnet.datasubnet.id
    } 
}