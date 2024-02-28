variable "application_name" {
  description = "The name of the application"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "resource_group_location" {
  description = "The location/region where the resources will be created."
  type        = string
}

variable "app_service_plan_tier" {
  type        = string
  description = "App services plan tier"
}
