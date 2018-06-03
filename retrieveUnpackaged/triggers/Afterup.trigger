trigger Afterup on tesy__c (before update,After update) {
    
    if(trigger.new[0].name==trigger.old[0].name)
        
        System.debug('Names are similar');
      

}