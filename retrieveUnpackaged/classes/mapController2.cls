public class mapController2 {
    public String address {get;set;}
    private List<Account> accounts;

    public void find() {
        // Normal, ugly query.
       /* address = 'USA';
        String addr = '%' + address + '%';
        accounts = [SELECT Id, Name, BillingStreet, BillingCity, BillingCountry FROM Account 
        //WHERE Name LIKE :addr OR BillingStreet LIKE :addr OR BillingCity LIKE :addr OR BillingCountry LIKE :addr];
        WHERE BillingCountry LIKE :addr];*/

       // address = 'Austin';
        String addr = '*' + address + '*';
        // Or maybe a bit better full-text search query.
        List<List<SObject>> searchList = [FIND :addr IN ALL FIELDS RETURNING 
            Account (Id, Name, BillingStreet, BillingCity, BillingState, BillingCountry)];
        accounts = (List<Account>)searchList[0];
    }

    public List<Account> getAccounts() {
        return accounts;
    }
}