trigger afterins on tesy__c (after insert,before update) {
    System.debug(trigger.new[0].name + 'inserted');
    System.debug(trigger.new[0].id + 'inserted');
    
   
    tesy__c t=new tesy__c(id=trigger.new[0].id);
    t.name='Mani'+trigger.new[0].name;
    update t;
   }