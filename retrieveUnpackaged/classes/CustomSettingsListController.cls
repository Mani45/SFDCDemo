public with sharing class CustomSettingsListController {

  public String selectedIso {get;set;}

  public List<selectOption> isoCodes {
    get {
      List<selectOption> options = new List<selectOption>();

      for (MyHome__Country_Codes__c iso : MyHome__Country_Codes__c.getAll().values())
        options.add(new SelectOption(iso.MyHome__Country_Code__c,iso.MyHome__Country_Name__c+' - '+iso.MyHome__Country_Code__c));
      return options;

    }
    set;
  }

}