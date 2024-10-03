# Create a default resource group
module "default_resource_group" {
  source = "../../"

  location   = local.location
  name       = local.name
  managed_by = local.managed_by

  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"

  tags = local.tags
}
