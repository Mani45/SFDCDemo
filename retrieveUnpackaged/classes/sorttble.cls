public with sharing class sorttble {

    public list<tesy__c> tlist { get; set; }
   
    public String selectedfield { get; set; }
   

    public PageReference SortMethod() {
      tlist=[select name,price__c from tesy__C limit 5 ];
        return null;
    }


    
}