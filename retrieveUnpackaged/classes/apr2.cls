public with sharing class apr2 {

 public list<account> recs2 { get; set; }


    public PageReference m2() {
      recs2=[select name,phone from account];
        return null;
    }
    public list<lead> recs { get; set; }

    public PageReference m1() {
        recs = [select name,email from lead]   ;
        return null;
         }
}