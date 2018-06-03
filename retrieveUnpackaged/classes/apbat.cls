global class apbat implements database.batchable<sobject>{

   global Iterable<SObject> start(Database.BatchableContext ct) {
 
      System.debug('I am in start');
      return Database.getQuerylocator([select name,phone from account where billingcity='hyderabad' ]);
 
   }
   global void execute(Database.BatchableContext ct, LIST<account>recs){
   
       System.debug('I am in Execute');
       for(account obj:recs){
       obj.name='mani';
       obj.phone='94913227';
       update obj;
  }
  }
   global void finish(Database.BatchableContext ct){
   System.debug('I am in finish');
   String[] toAddr=new String[]{'mani.renus@gmail.com','manikanta.yuvi80@gmail.com'};
   Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
   mail.setToAddresses(toAddr);  
   mail.setSubject('From My Salesforce Id');
   mail.setplainTextBody('See My Hardwork');
   Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
   System.debug('Sent mail to list of users');
   
   } 
  }