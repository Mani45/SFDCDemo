trigger UpdateNoOfOpp on Opportunity (after insert,after update,after undelete) {
    
    List<Account> list_Account= new List<Account>();
    set<Id> set_Opportunity = new set<Id>();
    for(Opportunity objOpp: trigger.new){
        set_Opportunity.add(objOpp.AccountId);
    }
    Decimal Sum;
    Map<Id,Opportunity> ma=new Map<Id,Opportunity>([select id,name,Amount from Opportunity where id in :set_Opportunity]);
   // ma=[select id,name,Amount from Opportunity where id in :set_Opportunity];
    
    for(Account objAccount : [SELECT Id,Name,(SELECT Id,Name,Amount FROM Opportunities) FROM Account WHERE Id IN: set_Opportunity]){
        Sum=0;
        for(Opportunity objOpp01: objAccount.Opportunities ){
            Sum+=objOpp01.Amount;
        }
        objAccount.Contacts_Amount__c   =Sum;
        list_Account.add(objAccount);
    }
    update list_Account;
}