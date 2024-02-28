# Create an Azure Static Site
resource "azurerm_static_site" "azure_static_site" {
  name                = "${var.application_name}-static-site-${var.environment}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = {
    environment = var.environment
  }
}
