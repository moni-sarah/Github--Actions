locals {
  workspace_suffix = terraform.workspace== "default" ? "" :"${terrafor.worspce}"
test_resource_name = terraform.workspace == "default" ? "${var.test_resource_name}" : " ${var.test_resource_name}-${local.workspace_suffix}"
st-git-names  = "${var.st-git.name }${locale.workspace_suffix}"
web_suffix = "<h1>${terraform.workspace}</h1>"

}

resource "random_string" "random_string" {
  length = 8
  special = false
  upper = false
  
}


# Resource Group
resource "azurerm_resource_group" "test_resource_name1" {
  name     = var.test_resource_name
  location = "West Europe"
}


# Create Storage Account
resource "storage_account_name" "sa_name"{
    name = "${lower(local.st-git-names)}${random_string.random_string.result}"
    resource_groupe_name = azurerm_resource_group.test_resource_name1.name
    location              = azurerm_resourc_group.test_resource_name1.local
    account_tier = "Standard"
    account_replication_type = "LRS"
    

    static_website {
      index_document = var.index_document
    }


}

# Add a index.html file 
resource "azurerm_storage_blob" "index_html" {
  name = var.index_document
  storage_account_name = azurerm_resource_group.test_resource_name1.name
  storage_container_name = "$web"
  type = "Block"
  content_type = "text/html"
  source_content = "${var.source_content}${local.web_suffix}"

  
}
output "primary_web_endpoint" {
  value = azurerm_resource_group.test_resource_name1
}
