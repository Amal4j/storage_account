rg = {
  rg1 = {
    name     = "AMAL-RG-INSIGHT"
    location = "centralindia"
  }
  rg2 = {
name = "kylos"
location = "eastus"

 }
}

sa = {
  sa1 = {
    name = "amalinsightstorage"
    # depends_on = [ azuerm_resource_group.rg ]
    rg_name                  = "AMAL-RG-INSIGHT"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}