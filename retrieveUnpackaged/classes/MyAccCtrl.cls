global class MyAccCtrl{
    @RemoteAction
    global static list<Account > myAccounts() {
        return [select id, name, Phone,Website from Account where Phone!=null Order By LastModifiedDate DESC LIMIT 50];
    }
}