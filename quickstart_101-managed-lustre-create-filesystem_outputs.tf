output "virtual_network_name" {
  value = azurerm_virtual_network.example.name
}

output "subnet_name" {
  value = azurerm_subnet.example.name
}

output "azurerm_managed_lustre_file_system" {
  value = azurerm_managed_lustre_file_system.example.name
}

output "amlfs_sku_name" {
  value = azurerm_managed_lustre_file_system.example.sku_name
}

output "amlfs_storage_capacity_in_tb" {
  value = azurerm_managed_lustre_file_system.example.storage_capacity_in_tb
}