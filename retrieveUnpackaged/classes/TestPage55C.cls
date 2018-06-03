public with sharing class TestPage55C {

    public PageReference Save() {
    insert l;
    
    PageReference redirect = new PageReference('/'+l.id); 
        return redirect;
    }

Public Lead l{get;set;}
public list<Lead> leadlist{get;set;}


public TestPage55c(){

l=new Lead();

leadlist=[select id,name,firstname,lastname,phone,email from Lead where firstname!=''];
}



}