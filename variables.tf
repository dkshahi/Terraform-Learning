variable "vsphere_server" {}
variable "vsphere_user" {}
variable "vsphere_password" {}

variable "aws_region" {}
variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "azurerm_subscription_id" {}
variable "azurerm_client_id" {}
variable "azurerm_client_secret" {}
variable "azurerm_tenant_id" {}

# Test variables
/*
variable network_name {
  default = "networkname"
  type = "string"
  description = "Network name for the platform"
}
variable ip_cidr_range {
  default = "10.0.0.0/16"
  type = "string"
  description = "IP CIDR Range for the platform"
}
variable subnet_names {
  type = "map"
  default = {
    subnet1 = "subnetone"
    subnet2 = "subnettwo"
    subnet3 = "subnetthree"
  }
}*/
