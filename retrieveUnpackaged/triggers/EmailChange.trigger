trigger EmailChange on Contact (before update) {

list<Id> ConIds=new list<Id>();
List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
list<Contact> clist=new list<Contact>();

 
for(Contact c:Trigger.new){

if(c.email!=Trigger.oldMap.get(c.Id).email && c.site_updated__c==FALSE){

      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
      List<String> sendTo = new List<String>();
      sendTo.add(c.Email);
      mail.setToAddresses(sendTo);
      mail.setSubject('Email Changed');
      String body = 'Dear ' + c.FirstName + ', ';
      mail.setHtmlBody(body);
      mails.add(mail);
      System.debug('Check em-->'+mails);
      
      c.Changed_Email_Id__c =c.email;
      c.email=Trigger.oldMap.get(c.Id).email;
      c.site_updated__c=FALSE;
      
   
}
}
//update clist;
 Messaging.sendEmail(mails);
 
    
 

}