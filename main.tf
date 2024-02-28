# Create a resource group
module "azurerm_resource_group" {
  source                  = "./resources/azure-resource-group"
  application_name        = var.application_name
  environment             = var.environment
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

# Create an Azure Static Site
module "azurerm_static_site" {
  source                  = "./resources/azure-static-site"
  application_name        = var.application_name
  environment             = var.environment
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

# Create an Azure App Service
module "azurerm_app_service" {
  source                  = "./resources/azure-app-service"
  application_name        = var.application_name
  environment             = var.environment
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  app_service_plan_tier   = var.app_service_plan_tier
}
