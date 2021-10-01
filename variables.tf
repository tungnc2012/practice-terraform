variable "resource_group_name" {
    type = string
    default = "tung-terraform"
}

variable "location" {
    type = string
    default = "Southeast Asia"
}

variable "vnet_name" {
    type = string
    default = "terraform-vnet"
}

variable "vnet_cidr" {
    default = ["10.16.0.0/16"]
}

variable "vm_size" {
    type = string
    default = "Standard_B1s"
}

variable "subnet_name" {
    type = string
    default = "subnet-1"
}

 variable "subnet_cidr" {
        type = list
    default = ["10.16.16.0/20"]
}

variable "publicip_name" {
    type = string
    default = "terraform-publicip"
}
