public with sharing class vftoexcel {

    public list<account> taccount { get; set; }

  public vftoexcel(){
  
  string ac='select name,phone from account limit 5';
     taccount=database.query(ac);
  }


}