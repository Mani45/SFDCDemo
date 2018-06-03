@RestResource(urlMapping='/redBus/Orders/*')
global without sharing class API_OrderIds
{
    @HttpPost
    global static response doPost()
    {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        system.debug('-----------data--------'+req);
        response resp = new response();
        system.debug(LoggingLevel.ERROR, req.requestBody.toString());
        Response r=new Response();
        Lead pg=new Lead();
        
        
        return r;
    }
    
    global class Response{
      public string orderId{get;set;}
      public string extId{get;set;}
    }
        
}