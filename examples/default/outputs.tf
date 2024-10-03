output "resource_group_id" {
  description = "The ID of the Resource Group."
  value       = module.default_resource_group.resource_group_id

}

output "resource_group_name" {
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  value       = module.default_resource_group.resource_group_name
}

output "resource_group_location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  value       = module.default_resource_group.resource_group_location
}
