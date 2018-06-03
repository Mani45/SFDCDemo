trigger createContact on Account (after insert) {

    List<Contact> cttocreate=new List<Contact>();
    for(account n:Trigger.new){
           contact ct=new contact();
            ct.FirstName='Mani';
            ct.LastName='Renus';
            // you need to relate your custObj and account based on the field you have 
            cttocreate.add(ct);    
   
  }
insert cttocreate;
}