variable "rg_name" {
  type        = string
  default     = "avd-resources-rg"
  description = "Name of the Resource group in which to deploy these resources"
}

variable "deploy_location" {
  type        = string
  default     = "east us"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "workspace" {
  type        = string
  description = "Name of the Azure Virtual Desktop workspace"
  default     = "AVD TF Workspace"
}

variable "hostpool" {
  type        = string
  description = "Name of the Azure Virtual Desktop host pool"
  default     = "AVD-TF-HP"
}

variable "ad_vnet" {
  type        = string
  default     = "infra-network"
  description = "Name of domain controller vnet"
}

variable "dns_servers" {
  type        = list(string)
  default     = ["10.0.1.4", "168.63.129.16"]
  description = "Custom DNS configuration"
}

variable "vnet_range" {
  type        = list(string)
  default     = ["10.1.0.0/16"]
  description = "Address range for deployment VNet"
}
variable "subnet_range" {
  type        = list(string)
  default     = ["10.1.0.0/24"]
  description = "Address range for session host subnet"
}

variable "ad_rg" {
  type        = string
  default     = "infra-rg"
  description = "The resource group for AD VM"
}

variable "avd_users" {
  description = "AVD users"
  default = [
    "avduser01@infra.local",
    "avduser01@infra.local"
  ]
}

variable "aad_group_name" {
  type        = string
  default     = "AVDUsers"
  description = "Azure Active Directory Group for AVD users"
}

variable "rdsh_count" {
  description = "Number of AVD machines to deploy"
  default     = 2
}

variable "prefix" {
  type        = string
  default     = "avdtf"
  description = "Prefix of the name of the AVD machine(s)"
}

variable "domain_name" {
  type        = string
  default     = "infra.local"
  description = "Name of the domain to join"
}

variable "domain_user_upn" {
  type        = string
  default     = "admin" # do not include domain name as this is appended
  description = "Username for domain join (do not include domain name as this is appended)"
}

variable "domain_password" {
  type        = string
  default     = "ChangeMe123!"
  description = "Password of the user to authenticate with the domain"
  sensitive   = true
}

variable "vm_size" {
  description = "Size of the machine to deploy"
  default     = "Standard_DS2_v2"
}

variable "ou_path" {
  default = ""
}

variable "local_admin_username" {
  type        = string
  default     = "localadm"
  description = "local admin username"
}

variable "local_admin_password" {
  type        = string
  default     = "ChangeMe123!"
  description = "local admin password"
  sensitive   = true
}

variable "netapp_acct_name" {
  default = "AVD_NetApp"
}

variable "netapp_pool_name" {
  default = "AVD_NetApp_pool"
}

variable "netapp_volume_name" {
  default = "AVD_NetApp_volume"
}

variable "netapp_smb_name" {
  default = "AVDNetApp"
}

variable "netapp_volume_path" {
  default = "AVDNetAppVolume"
}

variable "netapp_subnet_name" {
  default = "NetAppSubnet"
}

variable "netapp_address" {
  default = ["10.1.1.0/24"]
  description = "Address range for NetApp Subnet"
}
