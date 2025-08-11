targetScope = 'subscription'

@description('Name of the Resource Group to create')
param rgName string

@description('Azure region for the Resource Group')
param location string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
  tags: {
    environment: 'test'
    provisionedBy: 'github-actions'
  }
}

output rgId string = rg.id
