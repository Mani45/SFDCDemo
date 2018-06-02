public class TestUserupdate {
    
    Public user u{get;set;}
    public TestUserupdate(){
        
        u=[select id,name,lastname from user where id='00590000002b3bG'];     
        
    }
    
    public void savem(){
  
        update u;
        
        MyHome__Country__c cu=new MyHome__Country__c();
        
        cu.name='Test Cu from VF';
        
        insert cu;
       
        
    }

}