## Configure the aws Provider
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

## Configure the azure Provider
provider "azurerm" {
  subscription_id = var.azurerm_subscription_id
  client_id       = var.azurerm_client_id
  client_secret   = var.azurerm_client_secret
  tenant_id       = var.azurerm_tenant_id
}

## Configure the vSphere Provider
provider "vsphere" {
  vsphere_server       = "var.vsphere_server"
  user                 = "var.vsphere_user"
  password             = "var.vsphere_password"
  allow_unverified_ssl = true
}