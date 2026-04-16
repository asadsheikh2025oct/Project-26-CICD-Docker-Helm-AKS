// declaring parameters
param location string = resourceGroup().location
param aksName string = 'aks20260413'
param vmSize string = 'Standard_B2s'

// 1. provisioning aks cluster with 1 node
resource aksCluster 'Microsoft.ContainerService/managedClusters@2023-10-01' = {
  name: aksName
  location: location
  identity: {
    type: 'SystemAssigned' // cluster gets a system identity
  }
  properties: {
    dnsPrefix: 'myaks'
    agentPoolProfiles: [
      {
        name: 'nodepool1'
        count: 1
        mode: 'System'
        vmSize: vmSize
      }
    ]
  }
}

