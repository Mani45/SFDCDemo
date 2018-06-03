public class apsosl {

    public PageReference m2() {
        return null;
    }


    public String stat { get; set; }

    public list<account> arecs { get; set; }
    public list<lead> lrecs { get; set; }
   
    public PageReference m1() {


        List<List<SObject>> slist = [FIND 'cloud' IN ALL FIELDS RETURNING
                                    lead(Id, Name,phone), course__c(id,name)];

        arecs = ((List<account>)slist[1]);    
        lrecs = ((List<lead>)slist[0]);
        return null;


}
}