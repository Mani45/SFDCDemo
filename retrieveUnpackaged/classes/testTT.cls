@isTest
public class testTT{
    static testMethod void dtTests() {
    
    timesheet__c ti=new timesheet__c();
    ti.First_Half__c='yes';
    ti.Second_Half__c='No'; 
    ti.Statuscheck__c=true;
   
   ApexPages.StandardController sc = new ApexPages.StandardController(ti);
       
    test.startTest();
    
    tt t=new tt();
    t.find();
    t.addtimesheet();
    t.saveone();
    t.cancel();
    t.generatereport();
    Test.setCurrentPageReference(new PageReference('/apex/timesheet2_1')); 
    //String nextPage=t.save().getUrl();
    
    Test.setCurrentPage(Page.timesheet2);
    List<Apexpages.Message> msgs = ApexPages.getMessages();
    List<SelectOption> selOpts=t.monthList;
    
     boolean b = false;
      for(Apexpages.Message msg:msgs){
       if (msg.getDetail().contains('Work details already added to time sheet for selected date.'))
        b = true;
      }
      // system.assert(b);
    test.stopTest();
  //  System.assertEquals('/apex/timesheet2_1',nextPage); 


    }
}