var   location = 'east us'

resource appServicePlan 'Microsoft.Web/serverfarms@2021-03-01' = {
    name: 'demovv12345'
    location: location
    sku:{
      name: 'b1'
    }
}


resource appservice 'Microsoft.Web/sites@2021-03-01' ={
  name: 'demovv123456'
  location: location
  properties:{
    serverFarmId: appServicePlan.id
  }

  resource appServiceConfig 'config@2021-03-01' = {
    name: 'appsettings'
    properties:{
      ApplicationInsights_InstrumentationKey: appInsight.properties.InstrumentationKey
    }


  }

  }

  resource appInsight 'Microsoft.Insights/components@2020-02-02' = {
    name: 'demovv12345567'
    location: location
    kind: 'web'
    properties: {
      Application_Type: 'web'
          }
        }



  

