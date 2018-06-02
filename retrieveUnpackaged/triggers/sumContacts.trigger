trigger sumContacts on Contact (After insert,After  update) {

List<Contact> cList=new List<Contact>();
Set<id> accIds=new Set<id>();

for(Contact c:Trigger.new){
    cList.add(c);
    accIds.add(c.accountid);
    
}

List<Account> acList=new List<Account>();

acList=[select id,(select  Amount__c from Contacts)sum from Account where id in: accIds];

System.debug('acLIst*****'+acList);

list<Account> list_Account=new list<Account>();

Decimal Sum;
    for(Account objAccount : [SELECT Id,Name,Contacts_Amount__c,(SELECT Id,Name,Amount__c FROM Contacts) FROM Account WHERE Id IN: accIds]){
        Sum=0;
        for(Contact conObj: objAccount.Contacts ){
            Sum+=conObj.Amount__c ;
        }
        objAccount.Contacts_Amount__c=Sum;
        list_Account.add(objAccount);
    }
    update list_Account;



}