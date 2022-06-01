resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'Vnet1-Core'
#disable-next-line no-hardcoded-location
  location: 'WestUS'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.20.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'azure-firewall'
        properties: {
          addressPrefix: '10.20.1.0/24'
        }
      }
      {
        name: 'azure-vpn'
        properties: {
          addressPrefix: '10.20.2.0/24'
        }
      }
      {
        name: 'azure-expressroute'
        properties: {
          addressPrefix: '10.20.3.0/24'
        }
      }
      {
        name: 'azure-appgateway'
        properties: {
          addressPrefix: '10.20.4.0/24'
        }
      }
      {
        name: 'azure-monitoring'
        properties: {
          addressPrefix: '10.20.5.0/24'
        }
      }
      {
        name: 'azure-commonresources'
        properties: {
          addressPrefix: '10.20.6.0/24'
        }
      }
    ]
  }
}
