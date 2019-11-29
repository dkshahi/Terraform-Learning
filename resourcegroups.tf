resource "azurerm_resource_group" "tf-test-rg1" {
  location = "uksouth"
  name     = "tf-rg-01"
  tags = {
    environment = "Terraform RG Learning1"
  }
}