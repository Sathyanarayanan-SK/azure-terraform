variable "resource_group_name" {  # Define a variable for the name of the resource group
    default = "Terraform-RG"   # Set a default value for the resource group name
}

variable "resource_group_location" {  # Define a variable for the location of the resource group
    default = "Central India"  # Set a default value for the resource group location
}

variable "sku" {  # Define a variable for the SKU (pricing tier)
    default = "PerGB2018"   # Set a default value for the SKU
}

variable "retention_in_days" {  # Define a variable for the data retention period
    default = "30"  # Set a default value for the retention period (in days)
}

variable "apiname" {  # Define a variable for the name of the API
	default= "api-name"  # Set a default value for the API name
}

variable "log_analytics_workspacename" {  # Define a variable for the name of the Log Analytics workspace
    default = "testapi"  # Set a default value for the Log Analytics workspace name
}
