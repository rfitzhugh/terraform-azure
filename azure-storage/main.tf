## ========================================================================== ##
#  Create CloudOut Resource Group                                              #
## ========================================================================== ##

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.azure_location
}

## ========================================================================== ##
#  Create CloudOut Storage Account                                             #
## ========================================================================== ##
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "RAGZRS"
  
  tags = {
    environment = var.name_env
    managed-by  = "Terraform"
    rubrik-cdm  = var.rubrik_name_cluster
    use-case    = "rubrik-archive"
  }
}

## ========================================================================== ##
#  Create Storage Container                                                    #
## ========================================================================== ##
resource "azurerm_storage_container" "sc" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}