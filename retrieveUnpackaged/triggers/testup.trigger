trigger testup on tesy__c (before insert,before update)

{

 list<tesy__c> acc_list=trigger.new;

 for(tesy__c acc:acc_list)

 {

 if(trigger.isinsert)

 {

 acc.name='welcome sir';

 }

 if(trigger.isupdate)

 {

 acc.name='updated thanq';

 }

 }

}