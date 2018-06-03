public with sharing class AppAcessController {

public String SecurityCode{get;set;}
public String leademail{get;set;}


    public AppAcessController(ApexPages.StandardController controller) {
     List<Lead> Leadobject=[SELECT Email from Lead where Id=:controller.getId() limit 1 ];
     if (!Leadobject.isEmpty())
     {
       Blob beforeblob= Blob.valueOf(Leadobject[0].Email);
       leademail=EncodingUtil.base64Encode(beforeblob);
     }  

    List<Appsubscriber__c> Appsubscriberobject=[SELECT Id,Email__c,Name,Code__c,Status__c from Appsubscriber__c limit 1 ];
     if (!Appsubscriberobject.isEmpty())
       SecurityCode=Appsubscriberobject[0].Code__c;
   }



}