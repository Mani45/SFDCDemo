public with sharing class AccountList {
public list<Account> objAccounts {get;set;}
    
    
    public AccountList(){
        try{
            objAccounts = new list<Account>();  
            objAccounts.addAll([SELECT Name,BillingStreet,BillingCity,BillingPostalCode,
                                BillingCountry FROM Account 
                               ]);
        }catch(Exception ex){
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error:'
                                                        +ex.getMessage()));
        }
    }
}