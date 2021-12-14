// https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/best-practices
// https://fr.wikipedia.org/wiki/Camel_case

// https://docs.microsoft.com/fr-fr/azure/azure-resource-manager/bicep/deploy-cli
targetScope = 'subscription'


// Définition des Paramètres
param rgName string
param location string


// Ressource 
// https://docs.microsoft.com/en-us/azure/templates/microsoft.resources/resourcegroups?tabs=bicep
resource rg0 'Microsoft.Resources/resourceGroups@2021-04-01'= {
  name: rgName // paramètre
  location: location // paramètre
}

// az deployment sub create --location westeurope --template-file ./Bicep/Exercice_1/Rg.bicep --parameters 'rgName=RG-Bicep-00' 'location=westeurope'
