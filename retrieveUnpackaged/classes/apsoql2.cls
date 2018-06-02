public class apsoql2 {

    public String stat { get; set; }

    public PageReference m3() {
    list<course__c> c1=new list<course__c>(); 
    
    c1=[select name from course__c where fee__c=9000];
    
    delete c1;
        return null;
    }


    public PageReference m2() {
     
           course__c  cu=[select name from course__c where fee__c=9000];
      cu.name='.net'; 
      cu.duration__c='2 months';
      update cu;
      stat='Records updated';
        return null;
    }


    public PageReference m1() {
      course__c cc=new course__c();
      cc.name='Java';
      cc.fee__c=2000;
      insert cc;
      stat='Records Inserted';
    
        return null;
    }

}