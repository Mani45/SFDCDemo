public with sharing class DemoPdfController {
 Public List<account> accList{get;set;}
    Public DemoPdfController (){
     accList = [select id,name,type,accountnumber,annualrevenue from account limit 10];
    }
}