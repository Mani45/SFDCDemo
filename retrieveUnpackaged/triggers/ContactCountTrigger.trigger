/*
trigger childCount on contact (after update,after delete,after insert) {

set<id> oppId = new Set<id> ();


if((Trigger.isUpdate || Trigger.isInsert) && Trigger.isAfter){
for(contact oc:Trigger.new){
oppId.add(oc.AccountId);
System.debug('oppIds-->'+oppId);
}
}


if(Trigger.isDelete && Trigger.isAfter){
for(contact oc:Trigger.old){
oppId.add(oc.AccountId);
}
}


List<Account> opp = New List<Account> ();
List<Account> oppupdate = New List<Account> ();
List<contact> oppChild = New List<contact> ();

opp= [select id from Account where id in:oppid];
oppchild = [select id from contact where Accountid in :oppid];

Integer count =oppchild.size();

system.debug('*****count'+count);

for(Account opp2 :opp){
opp2.Contact_Count__c=count;
oppupdate.add(opp2);
}

update oppupdate;
} 

*/


Trigger ContactCountTrigger on Contact(After insert,After Delete,After Undelete)
{
  Set<Id> setAccountIds = new Set<Id>();
  
  //Whenever your working with After Undelete operation you can access data through 
  //Trigger.new or Trigger.newMap but not with Trigger.old or Trigger.oldmap variables
  if(Trigger.isInsert || Trigger.isUndelete)
  {
   for(Contact con : Trigger.new)
   {
    setAccountIds.add(con.AccountId);
   }
  }
  
  if(Trigger.isDelete)
  {
   //if you use Trigger.new below in place of Trigger.old you will end up with 
   //System.NullPointerException:Attempt to de-reference a null object
   for(Contact con : Trigger.old) 
   {
    setAccountIds.add(con.AccountId);
   }
  }
  
 List<Account> listAccs = [Select id,name,Contact_Count__c,(Select id from contacts) from Account where Id in : setAccountIds];
  for(Account acc :listAccs)
  {
   acc.Contact_Count__c= acc.contacts.size();
  }
  update listAccs;
}