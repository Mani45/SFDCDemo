public class ContactAndLeadSearch{

/*
public static pagereference searchContactsAndLeads(){
List<sObject> results = new List<sObject>();


List<List<sObject>> searchList = [FIND 'Wingo OR SFDC' IN ALL FIELDS RETURNING Lead(lastname,firstname),Contact(lastname,firstname)];
Lead[] searchLeads = (Lead[])searchList[0];
Contact[] searchContacts = (Contact[])searchList[1];

for (Lead l : searchLeads ) {
     results.add(l);
}

System.debug('Found the following contacts.');
for (Contact c : searchContacts) {
     results.add(c);
}
return null;
}

*/

public static  List<List< SObject>> searchContactsAndLeads(String name){


List<List<SObject>> searchList = [FIND 'Smith' IN ALL FIELDS  RETURNING Contact(firstname,lastname), Lead(firstname,lastname)];
       System.debug('list'+searchList );     
       
Contact[] searchContacts = (Contact[])searchList[0];
Lead[] searchAccounts = (Lead[])searchList[1];

System.debug('Found the following accounts.');
for (Lead a : searchAccounts) {
    System.debug('acc name-->'+a.lastname);
}

System.debug('Found the following contacts.');
for (Contact c : searchContacts) {
    System.debug(c.LastName + ', ' + c.FirstName);
}
                                                              
 return searchList;                                     
}
}