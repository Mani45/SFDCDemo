public with sharing class aptestt{
    public list<tesy__c> locationList{get;set;}
    public aptestt(){
        locationList = [Select ID, Country__c, State__c, City__c
                From tesy__c];
    }
    
}