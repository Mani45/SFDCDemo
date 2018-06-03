public class extContact
{
    public string accountId
    {    get;set;    }

    public string accountName
    {    get;set;    }
    
    public extContact(ApexPages.StandardController ctlr)
    {
        accountId = System.currentPageReference().getParameters().get('lookupVal');
        accountName = [select Name from Account where Id =: accountId].Name;
    }
}