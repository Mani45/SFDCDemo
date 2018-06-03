global class apexbatch implements database.batchable<sobject> {

    global Iterable<SObject> start(Database.BatchableContext ct) {
    
    return Database.getQuerylocator([select name,price__c from tesy__c]) ;
    }
    
    
    global void execute(Database.BatchableContext ct, LIST<tesy__c>recs) {
    
        for(tesy__c obj:recs){
            obj.name='Bangalore';
            obj.price__c=10;
            update obj;
        
        }
    }
    
    global void finish(Database.BatchableContext ct){
    
      Messaging.SingleEmailMessage mail=new Messaging.singleEmailmessage();
      String[] toAddr=new String[]{'mani.renus@gmail.com','mani11.renus@yahoo.com'};
      mail.setToAddresses(toAddr);
      mail.setsubject('Show my Work');
    }

}