public with sharing class renderas {
 Public List<account> accList{get;set;}
    Public renderas (){
     accList = [select id,name,type,accountnumber,annualrevenue from account limit 10];
    }
}