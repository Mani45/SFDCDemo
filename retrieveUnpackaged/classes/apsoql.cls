public class apsoql {

    public String stat { get; set; }

    public PageReference m3() {
     list<account> la=new list<account>();
     la=[select phone from account where billingcity='hyderabad'];
       delete la;
     stat='Records are deleted';
    
        return null;
    }


    public PageReference m2() {
     account a = [select name from account where name='kaka'];
                a.billingcity = 'Cyberabad';
                
                update a;  
                
                stat = 'Record Updated';      
    
        return null;

    }

    public pageReference m1() {

   account ac=new account();
        ac.name='pawan kalyan';
        ac.billingcity='Hyderabad';
        ac.phone='9491322718';
   
       insert ac;
       stat='Records Inserted';
       return null;
       
        
    }


    
   
}