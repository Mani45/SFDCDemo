public class apca3 {

    public String stat { get; set; }

    public String pname { get; set; }

    public List<tstudent__c> recs { get; set; }

    public PageReference f1() {
    
        recs =  [select name from tstudent__c where name =:  pname];

        stat = recs.size() +  ' Records exist ';
    
//   recs =  [select name, price__c from course__c where name like 'salesforce'];
    
        return null;
    }

}