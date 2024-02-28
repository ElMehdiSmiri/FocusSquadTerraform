resource "azurerm_service_plan" "service-plan" {
  name                = "${var.application_name}-service-plan-${var.environment}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku_name            = var.app_service_plan_tier
  os_type             = "Linux"
}

resource "azurerm_linux_web_app" "app-service" {
  name                = "${var.application_name}-api-${var.environment}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.service-plan.id

  site_config {}
}
