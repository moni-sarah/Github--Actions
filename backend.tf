

#  konfigurer backend for å lagre tfstate-filen
terraform {
  backend "azurerm" {
    resource_group_name   = "rg-backend-tfstate"
    storage_account_name   = "sabetfs34a9nmz46p2"
    container_name         = "tfstate"
    key                    = "web.terraform.tfstate"
  }
}
