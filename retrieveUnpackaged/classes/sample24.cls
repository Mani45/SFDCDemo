public class sample24 {

    public List<AggregateResult> Result {get;set;}    
    public List<Summary> SummaryList {get;set;}
    public List<Account> AcctList;
    public Map<Id, Account> IdAccount;
    List<Id> Ids;
    
    public void show() {
        SummaryList = new List<Summary>();
        Result = new List<AggregateResult>();
        Ids = new List<Id>();
        AcctList = new List<Account>();
        IdAccount = new Map<Id, Account>();
        
        Result = [SELECT Count(Id) Total , AccountId FROM Contact GROUP BY AccountId];               
        
        for(AggregateResult a : Result) {   
            Ids.add((Id)a.get('AccountId'));
        }
        
        AcctList = [SELECT Name FROM Account WHERE Id IN : Ids];
        
        System.debug('Account List' + AcctList);
        
        for(Account a : AcctList) {
            IdAccount.put(a.Id, a);            
        }
        
        System.debug('Ids and Accounts are ' + IdAccount);
                
        for(AggregateResult a : Result) {
            Account TempAcct = new Account();            
            tempacct= IdAccount.get((Id)(a.get('AccountId')));
          
           // system.debug('Account Name is ' + TempAcct.acctName);
            SummaryList.add(new summary(a,''));                
        }    
    }
    
    public class Summary {
        public Integer Total {get;set;}
        public string AcctName {get;set;}
        
        public Summary(AggregateResult a, string AccountName) {
            Total =  (Integer)a.get('Total');
            AcctName = AccountName;
        }
    }

}