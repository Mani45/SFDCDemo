trigger creaMer on Campaign (after insert) {

    List<Mer__c> Mlist=new List<Mer__c>();
    for(Campaign c:Trigger.new){
        Mer__c m=new Mer__c();
        if(c.IsActive==true ){
            m.name='Citizer';
            m.Price__c=4;
            Mlist.add(m);
        
        } 
    }
  Insert Mlist;
}