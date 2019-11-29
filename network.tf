## AWS Virtual Private Network
resource "aws_vpc" "environment-example-two" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "Terraform-aws-vpc-example-two"
  }
}
## AWS Subnetworks
resource "aws_subnet" "subnet1" {
  cidr_block        = cidrsubnet(aws_vpc.environment-example-two.cidr_block, 3, 1)
  vpc_id            = aws_vpc.environment-example-two.id
  availability_zone = "eu-west-2a"
  tags = {
    Name = "Terraform-aws-subnet-example-three"
  }
}
resource "aws_subnet" "subnet2" {
  cidr_block        = cidrsubnet(aws_vpc.environment-example-two.cidr_block, 2, 2)
  vpc_id            = aws_vpc.environment-example-two.id
  availability_zone = "eu-west-2b"
  tags = {
    Name = "Terraform-aws-subnet-example-four"
  }
}

## Azure Virtual Network
resource "azurerm_virtual_network" "TF_Virtual_Network" {
  address_space = [
  "10.0.0.0/16"]
  location            = "uksouth"
  name                = "tf-vn-01"
  resource_group_name = azurerm_resource_group.tf-test-rg1.name
  dns_servers = [
    "10.0.0.4",
  "10.0.0.5"]
}

## Azure Subnetworks
resource "azurerm_subnet" "TFVirtualsubnet1" {
  address_prefix       = "10.0.1.0/24"
  name                 = "tf-sn-01"
  resource_group_name  = azurerm_resource_group.tf-test-rg1.name
  virtual_network_name = azurerm_virtual_network.TF_Virtual_Network.name
}
resource "azurerm_subnet" "TFVirtualsubnet2" {
  address_prefix       = "10.0.2.0/24"
  name                 = "tf-sn-02"
  resource_group_name  = azurerm_resource_group.tf-test-rg1.name
  virtual_network_name = azurerm_virtual_network.TF_Virtual_Network.name
}