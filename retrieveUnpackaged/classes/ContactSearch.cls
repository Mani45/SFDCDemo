public class ContactSearch{

public static list<Contact> searchForContacts(String lastname,String postalcode){

list<Contact> conlist=[select id,name from Contact where lastname=:lastname and MailingPostalCode=:postalcode];
return conlist;
}

}