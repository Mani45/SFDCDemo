public class SendSmsEmail {

public string phone{get;set;}
public string email{get;set;}
public boolean check{get;set;}
public boolean checkMobile{get;set;}
public boolean checkEmail{get;set;}

public string send(){
        HTTP h = new HTTP();
        HttpRequest req= new HttpRequest();
        HTTPResponse res=new HTTPResponse();
        
        req.setTimeout(120000);
        req.setHeader('Channel_Name', 'WEB_DIRECT');
        req.setHeader('auth_key', '487a342c-92f1-41ae-81fa-aaa5120f6bb3');
        req.setHeader('BusinessUnit', 'BUS');
        req.setHeader('Country_Name', 'IND');
        req.setHeader('SelectedCurrency', 'INR');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Currency', 'INR');
        req.setHeader('Accept', 'application/msgpack1');
        req.setMethod('GET');
      //  req.setEndpoint('Update');               
        
       // res=h.send(req);
        
  ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Email has been sent successfully'));
return null;

}




}