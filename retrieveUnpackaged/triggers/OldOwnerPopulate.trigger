trigger OldOwnerPopulate on Account (before update) {

List<Id> UserIds=new List<Id>();

for(Account acc:Trigger.new){

 Account oldAcc =  Trigger.oldMap.get(acc.Id);
 if(acc.ownerid != oldAcc.ownerid ) {  
    acc.Old_Owner__c=oldAcc.owner.email__c; 
       UserIds.add(oldAcc.ownerid) ;
         }

} 

Map<Id, User> acctMap = new Map<Id, User>([select email from user where Id in :UserIds]);


for(Account ac2:Trigger.new){
 Account oldAcc =  Trigger.oldMap.get(ac2.Id);
System.debug('here prev owner-->'+acctMap.get(oldAcc.OwnerId).email);
ac2.Old_Owner__c = acctMap.get(oldAcc.OwnerId).email;
ac2.Old_OwnerT__c=acctMap.get(oldAcc.OwnerId).email;
}


/*
List<User> ulist=[select id,name,email from user where id in:UserIds];

for(Account ac:Trigger.new){
for(Integer i=0;i<ulist.size();i++){
ac.Old_Owner__c=ulist[i].email;
}
}*/

}