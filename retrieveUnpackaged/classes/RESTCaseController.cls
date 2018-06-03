@RestResource(urlMapping='/CreateTask/*')
global with sharing class RESTCaseController {

@HttpGet
    global static list<Account >getWidgets() {
        List<Account> widgets = [SELECT Name from Account];
       System.debug('accs-->'+widgets);
        return widgets;
    }

@HttpPost 
 // global static String createNewCase(String companyName, String caseType) {
    global static String createNewCase(String Name) {
     System.debug('COMPANY: '+Name);
     //System.debug('CASE TYPE: '+caseType);
     return 'Task Created';
   }


}