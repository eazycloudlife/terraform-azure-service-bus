resource "azurerm_resource_group" "this" {
  count = var.create_resource_group ? 1 : 0

  location   = var.location
  name       = var.name
  managed_by = var.managed_by

  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }

  tags = var.tags
}

resource "azurerm_management_lock" "this" {
  count = var.create_resource_group && var.resource_lock_enabled ? 1 : 0

  name       = format("%s-rg-lock", var.lock_level)
  scope      = azurerm_resource_group.this[0].id
  lock_level = var.lock_level
  notes      = var.notes
}
