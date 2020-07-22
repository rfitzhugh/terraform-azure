## ========================================================================== ##
#  Access Key Output                                                           #
## ========================================================================== ##
output "primary_access_key" {
  value       = azurerm_storage_account.sa.primary_access_key
  description = "The primary access key for the storage account."
}