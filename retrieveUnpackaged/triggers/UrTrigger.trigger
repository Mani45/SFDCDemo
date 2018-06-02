trigger UrTrigger on Account(before delete) { 
   list<Mer__c> MyList=new list<Mer__c>();
   for(Account obj:Trigger.old)
   {
       
      Mer__c temp=new Mer__c(Name=obj.Name); 
         MyList.add(temp);
   } 
 
   insert MyList;
   System.debug('success');
}