targetScope = 'subscription'

//@description('Name of the Resource Group to create')
param rgName string
param location string


@description('Azure region where the Resource Group is created')

module rg './modules/rg.bicep' = {
  name: 'rg_deploy_${rgName}'
  params: {
    rgName: rgName
    location: location
  }
}

output resourceGroupId string = rg.outputs.rgId
