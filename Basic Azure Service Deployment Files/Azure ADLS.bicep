res-resource dataLakeStore 'Microsoft.DataLakeStore/accounts@2016-11-01' = {
  name: 'name'
  location: location
  properties: {
    newTier: 'Consumption'
    encryptionState: 'Enabled'
  }
}
