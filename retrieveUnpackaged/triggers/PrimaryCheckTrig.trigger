trigger PrimaryCheckTrig on Contact (after insert,after update) {

public list<Id> clist=new list<Id>();
public list<Id> acids=new list<Id>();

for(Contact c:Trigger.new){
if(c.Primary_Check__c==TRUE){
clist.add(c.id);
acids.add(c.accountid);
}
}


list<Contact>  clist2=[select id,name,lastname,Primary_Check__c,accountid from Contact where id in:clist];

list<Account> aclist=[SELECT Name, ( SELECT LastName FROM Contacts where Primary_Check__c= TRUE ) FROM Account where id in : acids];

for(Account ac2:aclist){
System.debug('Account name:'+ac2.name+'  Number of contacts:'+ac2.contacts.size());
If(ac2.contacts.size()>1){
//Trigger.new[0].adderror('Primary Check already linked to <a href=\'https://na8.salesforce.com/'+ac2.contacts[0].lastname+'</a>');

Trigger.new[0].addError('Primary Check already linked to : '+ac2.contacts[0].lastname+' <a href=\'https://ap1.salesforce.com/'+ac2.contacts[0].id+'\'>Go to Contact</a>', false);
}
}

}