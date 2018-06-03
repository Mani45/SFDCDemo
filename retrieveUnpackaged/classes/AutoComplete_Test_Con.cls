public class AutoComplete_Test_Con {

    public PageReference save() {
    
    list<Account> acclist=[select id,name,Disease__c from Account where Disease__c=:targetField];
    system.debug('fw-->'+acclist.size());
    if(acclist.size()<=0){
    
    ApexPages.addmessage(new ApexPages.message(ApexPages.severity.error,'Disease is not found, Please enter correct one!!'));
    }
    return null;
      
    }

    public String targetField{get;set;}
    public String targetFieldCon{get;set;}
    public String targetFieldLead{get;set;}
    public String targetFieldCase{get;set;}
    
  /*  static testMethod void test_ComboBox_Test_Con(){
        AutoComplete_Test_Con con = new AutoComplete_Test_Con();
    } */
}