# azure-acr-with-geo-replication

This module create azure container registry with geo replication enabled and its necessary resources

## Pre-Requisite
- Azure Account
- Azure CLI

## Steps
- Login to Azure using the azure CLI
- Clone the Repository
- Then run the terraform commands to create the service connection (give the variables value when prompt ask).
```
Commands :
-  terraform init
-  terraform plan
-  terraform apply
```
```
You can also create your own terraform.auto.tfvars file to define the values of the variables. 
- To create a tfvars file `vim terraform.tfvars`
- Add variable_name = value
```

## Inputs:
Inputs for the module

| Variable | Description | Type | Required | Default |
|--|--|--|--|--|
| ResourceGroupName | Azure Resource Group Name | string | true | |	
| Location | Azure Region | string | true | |
| ContainerRegistryName | Azure Container Registry Name | string | true | |	
| ReplicationLocation | GeoReplication LOCATION | string | true | |