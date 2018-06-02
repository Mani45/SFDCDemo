public class StreamingAPIController
{
public StreamingAPIController()
{
}
/* Every time page is rendered, we can fetch the data on whichever criteria we want and return it back to the page. Here we are returning list of all the accounts. */
public List<Contact> getRefreshedAccount
{

get  {
System.debug('called controller');
return [select Id, Name,CreatedDate,MyHome__Amount__c  from Contact ORDER BY CreatedDate DESC LIMIT 5 ] ;
}
set;
}
}