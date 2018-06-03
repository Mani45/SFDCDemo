public class ClsNavigations {
 
  Account account;


public PageReference save()
{
update account;
PageReference secondPage = new ApexPages.StandardController(account).view();
secondPage.setRedirect(true);
return secondPage;
}
 
public String getName()
{
                    return 'MyController';
}
 
public Account getAccount()
{
if(account == null)
account = [select id, name from Account
where id = :ApexPages.currentPage().getParameters().get('id')];
return account;
}
}