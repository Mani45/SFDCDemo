public class Accountscls {

    public String rId{get;set;}
    public LIst<Account> lstrec = new List<Account>();
    
    public List<Account> getRecords()       {
    
        lstrec = [select Id,name from Account];
        return lstrec;
    }

// Viewing the record
   public PageReference showAccounts()
   {
        pagereference ref = new pagereference('/apex/showaccountpage?id='+rId);
        ref.setredirect(true);
        return ref;
    }
 
 
// Deleting our Redord
    public PageReference doDelete() {
     
    try{
        Account objDelete = [select Id from Account where id =: rId];
        delete objDelete;
    }catch(Exception e) {
        System.debug('Error Encountered ' + e.getMessage());
    }
     
        return null;
 
    }

    
// Showupdate page
 
   public PageReference doUpdate()
   {
      
        pagereference ref = new pagereference('/apex/showupdatePage?id='+rId);
        ref.setredirect(true);
        return ref;
    }
}