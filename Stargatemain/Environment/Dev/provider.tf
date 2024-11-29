terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "355610b5-ba88-4138-9829-fb850bc81e07"
  resource_provider_registrations = "none"
}


# terraform {
#   backend "azurerm" {
#     resource_group_name  = "Stargate-Data"  
#     storage_account_name = "Stargate-main-storage"                    
#     container_name       = "Stargate-main-container"                    
#     key                  = "prod.terraform.tfstate"       
#   }
#   }
