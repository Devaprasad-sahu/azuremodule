module "resource" {
  source   = "../../Module/Resource"
  resource = var.resource
}

# module "storage" {
#   depends_on = [module.resource]
#   source     = "../../Module/Storage_Account"
#   storage    = var.storage
#   container  = var.container
# }

module "Vnet" {
  depends_on = [module.resource]
  source     = "../../Module/Vnet"
  Vnet       = var.Vnet
}

module "Subnet" {
  depends_on = [module.resource, module.Vnet]
  source     = "../../Module/Subnet"
  Subnet     = var.Subnet
}

module "PublicIP" {
  depends_on = [module.resource, module.Vnet]
  source     = "../../Module/PublicIP"
  PublicIP   = var.PublicIP
}

module "NIC" {
  depends_on = [module.resource, module.Vnet, module.Subnet]
  source     = "../../Module/NIC"
  NIC        = var.NIC
}

module "VM" {
  depends_on = [module.resource, module.Subnet]
  source     = "../../Module/VM"
  VM         = var.VM
}