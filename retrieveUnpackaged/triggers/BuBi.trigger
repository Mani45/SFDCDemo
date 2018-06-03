trigger BuBi on tesy__c (before insert,before update) {

tesy__c obj1=new tesy__c();

 if(trigger.isinsert)
 {
   obj1.name='mani inserted';
 }
 if(trigger.isupdate){
   obj1.name='mani updated';
 }
}