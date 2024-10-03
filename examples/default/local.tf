locals {
  name       = "ezcl-resource-group-${basename(path.cwd)}"
  location   = "East US"
  managed_by = "eazycloudlife@gmail.com"

  tags = {
    Name       = local.name
    Example    = basename(path.cwd)
    Repository = "https://github.com/eazycloudlife/terraform-azure-resource-group"
  }
}
