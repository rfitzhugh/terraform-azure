## ========================================================================== ##
#  Declare Variables                                                           #
## ========================================================================== ##
variable "azure_location" {
    type = string
    description = "Name of Azure region"
}

variable "resource_group_name" {
    type = string
    description = "Name of Azure Resource Group"
}

variable "storage_account_name" {
    type = string
    description = "Name of Azure Storage Account"    
}

variable "storage_container_name" {
    type = string
    description = "Name of Azure Storage Container"     
}

variable "name_env" {
    type = string
    description = "Tag for environment name"  
}

variable "rubrik_name_cluster" {
    type = string
    description = "Tag for Rubrik cluster using archive"   
}