trigger duplicate on Lead( before update) {
      
    Map<String,Lead> leadMap = new Map<String,Lead>([select id,name from lead]);
    list<Lead> l=new list<lead>([select id,name,email from lead]);
    for (Lead n : Trigger.new) {
       Lead old=new Lead();
       old=Trigger.oldmap.get(n.id);
     //if (lead.name==System.Trigger.oldMap.get(lead.id).name)
     if(n.name==l[0].name)
         {            
           

           n.addError('Lead already exist..please give another name');                               
          }
          
         
       
    }
  }