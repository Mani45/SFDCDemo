public class ContactError {
 public contact contact{get;set;}
  public contact con{get;set;}
    public ContactError(ApexPages.StandardController controller) {
         contact=new contact();
          con=new contact();
    }
    
    public pagereference save(){
    system.debug('called fname**'+con.firstname);
    if(con.firstname==null){
         system.debug('called**'+con.firstname);
         system.debug('called**'+con.lastname);
       
        ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Error: Invalid Input.');
        ApexPages.addMessage(myMsg);
        return null;
    }
    return null;
    }


}