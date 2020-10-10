public with sharing class WeatherUpdateAPI {

   public string City {get;set;}
   public string Temp{get;set;}
   public string Wind{get;set;}
   public string Pressure{get;set;}
   public string Humidity{get;set;}
   public WeatherUpdateAPI(ApexPages.StandardController controller) {   
       Account account = (Account)controller.getRecord();
       account = [SELECT Id,Name, City__c from Account where Id =: account.Id];   
       
       String AccCity = account.City__c;
       String APIKey  = '602012dd3fb0085111ab42d1e1abe434';
       
       //e.g: api.openweathermap.org/data/2.5/weather?q=London
       
       String endpointURL = 'http://api.openweathermap.org/data/2.5/weather';
       endpointURL += '?q='+AccCity;
       endpointURL += '&units=metric';
       endpointURL += '&APPID='+APIKey;
       system.debug('endpointURL ='+endpointURL);
       HttpRequest req = new HttpRequest();
       req.setMethod('GET');
       req.setEndPoint(endpointURL);
       http h = new http();
        HttpResponse response;
      try{
       response = h.send(req);
       }
       catch(Exception e){
            ApexPages.Message MyMessage = new ApexPages.Message(ApexPages.Severity.Error, 'Error in reading data'+String.ValueOf(e));
            ApexPages.addMessage(MyMessage);
       }
       
       if(response.getStatusCode() == 200) // Success
       {
           Map<String,Object> result = (Map<String,Object>)JSON.deserializeUntyped(response.getBody());
           City = String.valueOf(result.get('name'));
           Map<String, Object> mainresults = (Map<String, Object>)result.get('main');
           Temp = String.valueOf(mainresults.get('temp'));
           Pressure = String.valueOf(mainresults.get('pressure'));
           Humidity = String.valueOf(mainresults.get('humidity'));
           Map<String, Object> windResults = (Map<String, Object>)result.get('wind');
           Wind = String.valueOf(windResults.get('speed'));
        }
        else
        {
            ApexPages.Message MyMessage = new ApexPages.Message(ApexPages.Severity.Error, 'Error in reading data'+response.getStatusCode());
            ApexPages.addMessage(MyMessage);
        }
        
    }
}