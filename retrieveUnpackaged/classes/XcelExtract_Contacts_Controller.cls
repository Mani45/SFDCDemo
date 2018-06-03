public with sharing class XcelExtract_Contacts_Controller {
Public List<String> selectedFieldsList{get;set;}
Public List<contact> conList {get;set;}
   public XcelExtract_Contacts_Controller(ApexPages.StandardController controller) {
     conList = New List<Contact>();
      conList = [select name,id,birthdate from contact limit 10];
   }

   Public PageReference OpenExcelSheet(){
     selectedFieldsList = New List<string>();
     
       selectedFieldsList.add('name'); 
       selectedFieldsList.add('Id');
       selectedFieldsList.add('Birthdate');
    
    PageReference OpenNewPage = New Pagereference('/apex'+'/Open_Xcel_Page');
    OpenNewPage.setRedirect(false); 
    return OpenNewPage;
   }

}