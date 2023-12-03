variable "test_resource_name" {
    type = string
    description = "The name of resource groupe"
}

variable "location" {
    type = string
    description = "The location of resources"
}

variable "st-git-names" {
    type = string
    description = "The storage account"
}

variable "source_content" {
    type = string
    description = "The name content of the index.html file"
    default = "<h1>Web App made with Terraform"
}

variable "index_document" {
    type = string
    description = "The name of the index document"
}