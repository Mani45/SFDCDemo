public class ContactNotify {

    public PageReference UpdateContact() {
    
     //update con;
     Contact_Email_Changes__c ce=new Contact_Email_Changes__c();
     ce.email__c=con.email;
     ce.Contact__c=con.id;
     insert ce;
     
        return null;
    }


public contact con{get;set;}
public ContactNotify(){

String Cid=ApexPages.currentPage().getParameters().get('CId');
con=new Contact();
if(Cid!=null){
con=[select id,name,email,lastname from Contact where id=:Cid];
}

} 

}