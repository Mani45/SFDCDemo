global class ContactServices
{   
    webservice static List<Contact> FindContact(string ContactSearchTerm)
    {
        List<List<sObject>> searchList = [FIND :ContactSearchTerm RETURNING Contact (Id, FirstName, LastName, Email)];
        return searchList[0];
    }
}