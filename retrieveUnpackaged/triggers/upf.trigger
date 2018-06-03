//Update the field value based on another filed condition..

Trigger upf on tesy__c (before insert,before update){
  for (Tesy__c obj: trigger.new){
    if(obj.price__c==10){
      obj.name='Hyderabad';
    }
  }
}