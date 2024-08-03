#!/bin/bash

# Change to the working directory where your Terraform files are located
cd "$(System.DefaultWorkingDirectory)/configuration/iaac/azure/kubernetes"

# Variables
RESOURCE_GROUP_NAME="kubernetes_dev"
RESOURCE_GROUP_ID="/subscriptions/80113cca-9d1e-4436-ba96-6235136ee2cf/resourceGroups/${RESOURCE_GROUP_NAME}"

# Initialize Terraform
terraform init

# Import the existing resource group into Terraform state
terraform import azurerm_resource_group.resource_group ${RESOURCE_GROUP_ID}
