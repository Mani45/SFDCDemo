public class SendAccountUsingRESTAPI {
  private final String clientId = '3MVG9ZL0ppGP5UrB2_hB_pAOPqchc5VthIyFS1a6Srqwj2kGV1dvgrAAAEWkbM73CzyziPG5gCOUpRtqZaZxo';
   private final String clientSecret = '5856839000047687095';
   private final String username = 'sfdcdev@cloud.com';
   private final String password = 'thulasi96185';
  public class deserializeResponse
   {
      public String id;
      public String access_token;
   }
  public String ReturnAccessToken ()
   {
      String reqbody = 'grant_type=password&client_id='+clientId+'&client_secret='+clientSecret+'&username='+username+'&password='+password;
     Http h = new Http();
      HttpRequest req = new HttpRequest();
      req.setBody(reqbody);
      req.setMethod('POST');
      req.setEndpoint('https://ap2.salesforce.com/services/oauth2/token');
      HttpResponse res = h.send(req);
      System.debug('response string-->'+res.getBody());
     deserializeResponse resp1 = (deserializeResponse)JSON.deserialize(res.getbody(),deserializeResponse.class);
     system.debug('@@@@access_token@@'+resp1.access_token);
      return resp1.access_token;
   }
  
  @future(callout=true)   
   public static void callgetContact (String accId)
   {
   list<contact> conList=[select id,lastname,email from Contact where id=:accid] ;
   String name=conList[0].lastname;
   String e=conList[0].email;
   String jsonString2='{"lastname":" '+name+'","email":" '+e+ '"}';
   
   String jsonString= JSON.serialize(conList); 
           SendAccountUsingRESTAPI acount1 = new SendAccountUsingRESTAPI();
           String accessToken;
          // String jsonString='{}';
           accessToken = acount1.ReturnAccessToken ();
           list<Contact> LstContact=new List<Contact>();
           if(accessToken != null){
           String endPoint = 'https://ap2.salesforce.com/services/apexrest/ContactInsert/createNewCase';
           //String jsonstr = '{"accId" : "' + accId+ '"}';
           Http h2 = new Http();
           HttpRequest req1 = new HttpRequest();
           req1.setHeader('Authorization','Bearer ' + accessToken);
           req1.setHeader('Content-Type','application/json');
           req1.setHeader('accept','application/json');
           //req1.setBody(jsonstr);
           req1.setMethod('POST');
           req1.setbody(jsonString2);
           req1.setEndpoint(endPoint);
           System.debug('req here--->'+req1);
           HttpResponse res1 = h2.send(req1);
           String trimmedResponse = res1.getBody().unescapeCsv().remove('\\');
           system.debug('@@@RESPONSE@@'+trimmedResponse);
           JSONParser parser = JSON.createParser(res1.getBody());
}
} 
}