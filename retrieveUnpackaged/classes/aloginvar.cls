public class aloginvar {

    public PageReference m1() {
    integer n= [select count() from login__c where name=:uid and Password__c=:pwd];
        if(n>=1)
          stat ='Login Success';
          else 
          stat =' Login Failed';
        
        
        return null;
    }

    public String stat {get;set;}
    
    public String pwd { get; set; }

    public String uid { get; set; }
}