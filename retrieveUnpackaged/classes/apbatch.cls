global class apbatch implements database.batchable<sobject>{

    global Iterable<SObject> start(Database.BatchableContext ct){

       return Database.getQueryLocator([select name,id from account where name='mani']);


        }
    global void execute(Database.BatchableContext ct, LIST<account>recs) {
       for(account obj:recs){
         obj.phone='999441047228';
         obj.name='Renus Mani';
          update obj;
             }
        }

     global void finish(Database.BatchableContext ct){
     
      Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
      string[] toAddr=new string[]{'mani.renus@gmail.com','manikanta.yuvi80@gmail.com'};//Only up to 10 Email id's(Governer Limits)
      mail.setToAddresses(toAddr);
      mail.setSubject('From My Salesforce Id');
      mail.setSubject('See my Hardwork');
      
}

}