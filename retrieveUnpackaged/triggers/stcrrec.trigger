trigger stcrrec on account(after insert)
{
  List<training__c> lstTesy = new List<training__c>();
  for(Account a : Trigger.new)
  {
     training__c obj=new training__c();
     obj.name = 'test';
     lstTesy.add(obj);
  }
  insert lstTesy;  
}

/* trigger MyTrigger on User (after insert) {
Contact c = new Contact();
c.LastName='test';
insert c;
}
*/