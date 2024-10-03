
variable "create_resource_group" {
  description = "Determines whether resources will be created (affects all resources)"
  type        = bool
  default     = true
}

# resource group

variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string
  default     = null
}

variable "managed_by" {
  description = "(Optional) The ID of the resource or application that manages this Resource Group."
  type        = string
  default     = null
}

variable "create" {
  type        = string
  default     = "90m"
  description = "(Defaults to 90 minutes) Used when creating the Resource Group."
}

variable "read" {
  type        = string
  default     = "5m"
  description = "(Defaults to 5 minutes) Used when retrieving the Resource Group."
}

variable "update" {
  type        = string
  default     = "90m"
  description = "(Defaults to 90 minutes) Used when updating the Resource Group.."
}

variable "delete" {
  type        = string
  default     = "90m"
  description = "(Defaults to 90 minutes) Used when deleting the Resource Group."
}

# management_lock

variable "resource_lock_enabled" {
  description = "Determines whether resources will be enable or disable lock resource."
  type        = bool
  default     = true
}

variable "lock_level" {
  description = "(Required) Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly. Changing this forces a new resource to be created."
  type        = string
  default     = "CanNotDelete"
}

variable "notes" {
  description = "(Optional) Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

