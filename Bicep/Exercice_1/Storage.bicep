// https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices
// https://fr.wikipedia.org/wiki/Camel_case

param  storageAccountName string
param location string

@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_ZRS'
])
param skuName string

@allowed([
  'BlobStorage'
  'BlockBlobStorage'
  'FileStorage'
  'Storage'
  'StorageV2'
])
param kindName string

// https://docs.microsoft.com/en-us/azure/templates/microsoft.storage/storageaccounts?tabs=bicep
resource storageAccount0 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: storageAccountName //https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftstorage
  location: location
  sku: {
    name: skuName //https://docs.microsoft.com/en-us/azure/templates/microsoft.storage/storageaccounts?tabs=bicep#sku
  }
  kind: kindName
}

// az deployment group create --resource-group RG-Bicep-00 --template-file ./Bicep/Exercice_1/Storage.bicep --parameters ./Bicep/Exercice_1/Storage.parameters.json
