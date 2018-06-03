public class aapsosl {

    public list<lead> lrecs { get; set; }
  
    public list<course__c> arecs { get; set; }
  
    public PageReference m1() {
    
    List<list<sobject>> slist=[find 'mani' in all fields returning course__c(id,name),lead(id,name)];
       arecs=((list<course__c>)slist[0]);
       lrecs=((List<lead>)slist[1]);
         ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Confirm, ' Searched Successfully '));

        return null;
    }
}