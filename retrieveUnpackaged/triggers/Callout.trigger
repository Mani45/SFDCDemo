trigger Callout on Contact (after insert,after update) {

//CalloutContacts.getContactss();
    
    for(Contact c:Trigger.new){
        
      //  CalloutContacts.getContactss(c.id,c.lastname);
        SendAccountUsingRESTAPI.callgetContact(c.id);
    }

}