public with sharing class accountSearch1 {
    public String accountName{get;set;}
    Public List<Account> accountList{get;set;}
    public Boolean selected{get;set;}  
    public List<Lead> companyName{get;set;}
    public string selectedField{get;set;}
    //public Lead led{get;set;}
    Map<String,Account> accountMap=new Map<String,Account>(); 
    List<Lead> ldata=new List<Lead>();
   
    public accountSearch1(ApexPages.StandardController controller) {    
      companyName=[select Company from Lead where id=:ApexPages.CurrentPage().getparameters().get('id')];       
      accountList=new List<Account>();
        accountName=companyName[0].Company;
        for(account a:[select id,Name,BillingCountry,BillingPostalCode,BillingCity from account where Name Like:accountName]){
        accountList.add(a); 
        accountMap.put(a.id,a);           
        }
    }
    public void SearchData(){ 
      accountList=new List<Account>();     
        for(account a:[select id,Name,BillingCountry,BillingPostalCode,BillingCity from Account where Name Like:'%'+accountName+'%']){
        accountList.add(a); 
        accountMap.put(a.id,a);               
        }        
    }    
    public void selectAcc(){
     
   String acntid=System.currentPagereference().getParameters().get('id');
     system.debug('@@@@@@@'+acntid);
     Lead led=new Lead();
    led.Company=' ';//accountMap.get(acntid).Name;
    
        /*
     
   for(Lead l:[select id,Company from Lead where id=:ApexPages.currentPage().getParameters().get('id')]){
     l.Company=accountMap.get(acntid).Name;
     system.debug('account map'+accountMap);
     
     }    */ 
    }
    
     Public void updateLead(){
         selectAcc();
     }
}