terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backends"
    storage_account_name = "myterraformbackends"
    container_name       = "focus-squad-tf-state"
    key                  = "terraform.tfstate"
  }
}
