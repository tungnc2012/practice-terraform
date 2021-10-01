variable "vnet_name" {
  default     = ""
  description = ""
}

variable "vnet_cidr" {
  default     = ""
  description = ""
}

variable "subnet_cidr" {
  default     = ""
  description = ""
}

variable "subnet_name" {
  default     = ""
  description = ""
}

variable "location" {
  default     = ""
  description = ""
}

variable "resource_group_name" {
  default     = ""
  description = ""
}

variable "vm_size" {
    default = ""
}

variable "subnet_id" {
    default = ""
}

variable "publicip_name" {
    default = "terraform-publicip"
}

variable "nic_name" {
    default = ""
}

variable "vm_name" {
    default = ""
}

// variable "nic_id" {
//     default = "terraform-nic"
// }