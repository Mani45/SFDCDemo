public class GetContacts {
    
    @auraEnabled
    public List<Contact> getContactRecords(){
        List<Contact> lsContact=[select id,lastname from Contact limit 15];
        return lsContact;
    }

}