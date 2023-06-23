resource "azurerm_resource_group" "R1" {
    name = "R1"
    location = "eastus"
}
resource "azurerm_storage_account" "storageaccount9898" {
    name = "storageaccount8989"
    resource_group_name = azurerm_resource_group.R1.name
    location = azurerm_resource_group.R1.location
    account_kind = "StorageV2"
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}
resource "random_string" "random_result" {
    length = 6
    special = false
  
}
#resource "azuread_user" "usr" {
#    user_principal_name = "usr1@kalleshi05outlook.onmicrosoft.com"
#    display_name = "USR 1"
#    password = "test@567"
#    force_password_change = true
#}