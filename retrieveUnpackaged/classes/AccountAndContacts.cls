public class AccountAndContacts {
    public Contact ContactInformation {get; set;}
    public List<Contact> AllContacts  {get; set;}
    public list<Contact> objcnt{get;set;}
    
    public AccountAndContacts(ApexPages.StandardController controller) {
        ContactInformation = (Contact)controller.getRecord();
               
    } 
  public void getAllContacts(){
        AllContacts =[SELECT Id, Name,MailingStreet,MailingCity,MailingCountry FROM Contact WHERE AccountId = :ContactInformation.AccountId];               
                                   
    }   
}