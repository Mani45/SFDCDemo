public with sharing class apr3 {

    public list<account> recs1 { get; set; }
  
  public apr3(){
      recs= [select name,email from lead where name='Bertha Boxer'];
       recs1=[select name,phone from Account where phone=''];
 
 }
    public list<lead> recs { get; set; }
}