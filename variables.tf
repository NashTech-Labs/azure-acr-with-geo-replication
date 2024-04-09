variable "ResourceGroupName" {
    description = "Azure Resource Group Name"
  type = string
}

variable "Location" {
  type = string
}

variable "ContainerRegistryName" {
  type = string
}

variable "ReplicationLocation" {
    type = list(string)
}