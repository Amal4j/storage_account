resource "azurerm_resource_group" "rg" {
  for_each = var.rg
  name     = each.value.name
  location = each.value.location
}

resource "azurerm_storage_account" "insight_storage" {
  for_each                 = var.sa
  depends_on               = [azurerm_resource_group.rg]
  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier              = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}


