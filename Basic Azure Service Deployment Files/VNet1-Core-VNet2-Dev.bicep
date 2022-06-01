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

resource virtualNetwork1 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'Vnet2-Dev'
#disable-next-line no-hardcoded-location
  location: 'WestUS'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.30.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Not-defined'
        properties: {
          addressPrefix: '10.30.1.0/24'
        }
      }
      {
        name: 'Databases'
        properties: {
          addressPrefix: '10.30.2.0/24'
        }
      }
      {
        name: 'Applications'
        properties: {
          addressPrefix: '10.30.3.0/24'
        }
      }
      {
        name: 'Websites'
        properties: {
          addressPrefix: '10.30.4.0/24'
        }
      }
      {
        name: 'Others'
        properties: {
          addressPrefix: '10.30.5.0/24'
        }
      }
      
    ]
  }
}
