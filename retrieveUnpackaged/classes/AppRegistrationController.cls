public with sharing class AppRegistrationController {

    public List<Appsubscriber__c> SubscribeDetails {get;set;}
    public Boolean Formswitcher{get;set;}
    public Appsubscriber__c SubscribeObject{get; set;}
    public AppRegistrationController(ApexPages.StandardController controller) {
      InialFunctions();
    }
    public void InialFunctions()
    {
      SubscribeDetails=[SELECT Id,Email__c,Name,Code__c,Status__c from Appsubscriber__c limit 1 ];
      if (!SubscribeDetails.isEmpty())
      Formswitcher=true;
       else
      Formswitcher=false;
      SubscribeObject=new Appsubscriber__c();
    }
     public PageReference Save()
    {
        try {
            upsert SubscribeObject;
            sendEmailFunction(SubscribeObject);
            return SuceesRedirect();
        } catch (DmlException e) {
    
        }
       return null;
    }
     public PageReference Cancel()
    {
       
       return null;
    }
     public PageReference SubscribeUpdate()
    {
        try {
            SubscribeDetails[0].Status__c='Access Code Set';
            upsert SubscribeDetails;
            return SuceesRedirect();
        } catch (DmlException e) {
    
        }
       return null;
    }
    
    public PageReference SuceesRedirect()
    {
    PageReference pg = new PageReference('/apex/AppRegistration');
    pg.setRedirect(true);
    return pg;
    }
    
    Public void sendEmailFunction(Appsubscriber__c rec){
     Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
     String[] toAddresses = new String[] {'sushankotianriverdale@gmail.com'}; 
     mail.setToAddresses(toAddresses);
     mail.setSenderDisplayName(rec.Name);
     mail.setSubject('Access Code Request');
     mail.setBccSender(false);
     mail.setUseSignature(false);
     mail.setPlainTextBody('This is test email body. This mail is being sent from apex code');
     mail.setHtmlBody('Name:'+rec.PersonName__c+'<br/>Company Name:'+rec.Name+'<br/>Email: '+rec.Email__c+'<br/>Phone: '+rec.Phone__c+'<br/>Street: '+rec.Address__c+'<br/>City: '+rec.City__c+'<br/>State: '+rec.State__c+'<br/>Country: '+rec.Country__c+'<br/>Zip Code: '+rec.Zip_Code__c);
     Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
 } 

}