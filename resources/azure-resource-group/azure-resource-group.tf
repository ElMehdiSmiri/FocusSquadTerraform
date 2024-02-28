# Create a resource group
resource "azurerm_resource_group" "my-resource_group" {
  name     = "${var.resource_group_name}-${var.environment}"
  location = var.resource_group_location
}
