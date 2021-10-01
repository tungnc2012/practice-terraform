#define public ip-for-vm1
resource "azurerm_public_ip" "myvm1publicip" {
  name                = var.publicip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
  sku                 = "Basic"
}

#define network interface for VM-1
resource "azurerm_network_interface" "terraform-nic1" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "public-1"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.myvm1publicip.id
  }
}

resource "azurerm_virtual_machine" "vm1" {
  name                             = var.vm_name
  location                         = var.location
  resource_group_name              = var.resource_group_name
  network_interface_ids            = [azurerm_network_interface.terraform-nic1.id]
  vm_size                          = var.vm_size
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true


  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "terraform-disk-2"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "terraform-vm2"
    admin_username = "tungdo"
    admin_password = "Tung12345678"
    // custom_data    = base64encode(data.template_file.linux-vm-cloud-init-vm1.rendered)
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    Name = "terraform-vm1"
  }
}
