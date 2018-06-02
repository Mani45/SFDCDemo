public class CalloutContacts {

@Future(callout=true)
    public static void getContactss(String ConId,String ConName) {
      
        System.debug('Contact Id:'+ConId);
        Http h = new Http();
        HTTPRequest req = new HTTPRequest();
        HTTPResponse resp = new HTTPResponse();
        req.setHeader('Content-Type', 'application/xml');
        req.setEndpoint('https://www.google.com/search?q='+ConName);
        req.setMethod('GET');
        resp = h.send(req);     
        String response = resp.getBody();
        system.debug('Response here--->'+response);

        /*  HttpRequest req = new HttpRequest();
        req.setEndpoint('http://google.com');   
        req.setMethod('GET');
        req.setHeader('Content-Type','application/json');
        req.setBody(ConId);
        req.setCompressed(true); 
        Http h = new Http();
        HttpResponse res = h.send(req);
        String jsonData = res.getBody();    
        System.debug('Show JsonData starts here--> '+jsonData +' <--Ends here Send contact id and decrypt response' );
        System.debug('STATUS:'+res.getStatus());
        System.debug('STATUS_CODE:'+res.getStatusCode());
*/


    }
    
   
}