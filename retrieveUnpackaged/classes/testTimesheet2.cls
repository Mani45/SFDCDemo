@isTest
public class testTimesheet2{
 static testMethod void dtTests() {
      timesheet__c tis=new timesheet__c();
    tis.First_Half__c='yes';
    tis.Second_Half__c='No'; 
    ApexPages.StandardController sc = new ApexPages.StandardController(tis);
    List<Apexpages.Message> msgs = ApexPages.getMessages();
       boolean b = false;
       for(Apexpages.Message msg:msgs){
   if (msg.getDetail().contains('Work details already added to time sheet for selected date.'))
            b = true;
          }
     test.startTest();
       timesheet2 ti=new timesheet2();
       Test.setCurrentPageReference(new PageReference('/apex/timesheet2_2')); 
        List<SelectOption> selOpts=ti.monthList;
        ti.addtimesheet() ;
        ti.saveone();
        ti.find();
        ti.generatereport();
     test.stopTest();
    
 }

}