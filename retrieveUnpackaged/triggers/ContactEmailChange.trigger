trigger ContactEmailChange on Contact_Email_Changes__c (after insert) {

list<Contact> conlist=new list<Contact>();

for(Contact_Email_Changes__c  c:Trigger.new){

Contact con=new Contact();
con.id=c.contact__c;
con.email=c.email__c;
con.site_updated__c=TRUE;

conlist.add(con);

}

update conlist;

}