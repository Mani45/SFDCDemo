public class massupdatec {
 
    public string SearchText {
    get;
    set;
  }
    
 
  private List<Account> accounts;
 
  public List<Account> getAccounts() {
    return accounts;
  }
 
   public PageReference ShowData() {
    //dynamically build the query to insertthe filter values
    String query = 'Select id, name,  phone, BillingCity FROM account WHERE name LIKE \'' + SearchText+ '%\'';
 
    accounts = Database.query(query);
                 
     
    return null;
  }
 
  public PageReference UpdateRecords() {
    // this simple line of code finds out which column was changed and update the
    // relevant account record accordingly!
    update accounts;
    return null;
  }
}