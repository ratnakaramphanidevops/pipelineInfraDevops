terraform {
  backend "azure"{}
}
provider "azurerm" {
 
   version = "~>2.0"

    # subscription_id="8f14efb9-d2f2-4ef8-aeb8-afe76bf837bc"
    # tenant_id="2350759d-5605-44a5-b4ba-76c6ac205e2b"
    # client_id="87eec86f-b126-4f5d-8596-5e4a8ad7bca5"
  features {
  }
} 

resource "azurerm_resource_group" "R1" {
  name     = "HelloRG"
  location = "East us"
}
