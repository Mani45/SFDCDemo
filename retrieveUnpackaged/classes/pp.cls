public class pp {

    public String pname { get; set; }

    public String stat { get; set; }

    public PageReference f1() {
    
    List<Tstudent__c> recs=[select name from tstudent__c where name=:pname];
    stat=recs.size()+  'Record(s) exist';
        return null;
    }

}