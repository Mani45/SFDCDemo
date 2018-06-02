global class TestJson
{  
    // POST method which will send customer infomation and update 'CustomerID' from response
    @future (Callout = true)            
    public static void restCallout(String Id)
        {
        // Query contact record which triggered this callout
        Contact con = [Select firstname, lastname,phone,email from Contact where Id= :Id];
             String   jsonTask = JSON.serialize(con);
             System.debug('json here--->'+jsonTask);            
             Http h = new Http();           
             HttpRequest req = new HttpRequest();
             req.setHeader('Content-Type', 'application/json');        
             req.setEndpoint('callout:EPEndPoint'); //Change EndPoint in NamedCredentials
             req.setMethod('POST');
             req.setBody(jsonTask );             
               try{
            HttpResponse res = h.send(req);
            System.debug('Response status is:'  + res.getStatus());
            System.debug('Response body is:' + res.getBody());
            }catch(CalloutException e){
             System.debug('An exception occured: '+ e);
           }
        }
        
      }