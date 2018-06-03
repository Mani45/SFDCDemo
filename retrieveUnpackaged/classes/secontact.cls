public with sharing class secontact {

    public string inp{get;set;}
    
    public boolean click{set;get;}
    
    public list<contact> showcon{get;set;} 
    
    public secontact(ApexPages.StandardController controller) {

    }

    public pagereference searchc(){
    
    String qry = 'select Name,phone from contact '+' where name LIKE \'%'+inp+'%\' order by name  ';
        showcon = Database.query(qry);
        return null;
        
    
    
    }

}