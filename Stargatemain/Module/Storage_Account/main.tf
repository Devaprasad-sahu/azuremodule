# resource "azurerm_storage_account" "storage" {
#     for_each = var.storage
#     name = each.value.name
#     location = each.value.location
#     resource_group_name = each.value.resource_group_name
#     account_tier = each.value.account_tier
#     account_replication_type = each.value.account_replication_type  
# }

# resource "azurerm_storage_container" "container" {
#     for_each = var.container
#     name = each.value.name
#     storage_account_name = each.value.storage_account_name
#     container_access_type = each.value.container_access_type
# }