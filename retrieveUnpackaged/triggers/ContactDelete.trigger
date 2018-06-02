trigger ContactDelete on Contact (after delete) {

public list<Lead> lLeads=new list<Lead>();

for(Contact c:Trigger.old){
Lead l=new Lead();
l.lastname=c.lastname;
lLeads.add(l);
}
if(lLeads.size()>0)
insert lLeads;
}