public with sharing class contactrelatedlist {

    public list<contactWrapper> lstWrapper {get;set;} 
    Public List<contact> conlist{get;set;}
    Public contact condObj{get;set;}
    Account ac; 
   
    public contactrelatedlist(ApexPages.StandardController controller) {
         this.ac = (Account)controller.getRecord();
        // conlist = [select name,id,phone,email from contact where accountid=:ac.id];
              
        lstwrapper =new list<contactwrapper>();
         
        Contactwrapper con = new contactwrapper (); 
        Con.c = new Contact (accountid = ac.id);
        lstwrapper.add (con);
                 
        }
    public pagereference addrows(){
          Contactwrapper conn=new contactwrapper();
          conn.c=new contact(accountid=ac.id);
          lstwrapper.add(conn);
          return null;      
                 
    }
   
   public pagereference save(){
   
      return null;
   }
   public class contactwrapper{
          Public contact c{get;set;}
          
          public string name{ get;set;}
          public string email{get;set;}
          public string phone {get;set;}
          
      }

}