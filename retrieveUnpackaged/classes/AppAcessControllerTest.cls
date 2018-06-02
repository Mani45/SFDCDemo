@isTest
public class AppAcessControllerTest {
    static testmethod void myunittest(){
        
        Lead l=new Lead();
        AppAcessController aas=new AppAcessController(new ApexPages.StandardController(l));
       
        Appsubscriber__c a=new Appsubscriber__c();
         a.name='test';
         a.Email__c='test@test.com';
         a.PersonName__c='test';
         a.Code__c='test';
         insert a;
         Appsubscriber__c asl=[select id,name,Code__c,PersonName__c,Email__c from Appsubscriber__c where id=:a.id];
        System.assertEquals(asl.name,'test');
        System.assertEquals(asl.personname__c,a.personname__c);
        System.assertEquals(asl.Code__c,a.Code__c);
        System.assertEquals(asl.email__c,a.email__c);
        PageReference pageRef = Page.InsightBASE_Dashboard;
        pageRef.getParameters().put('SecurityCode',a.Code__c );
        Test.setCurrentPage(pageRef);
        
    }
    
    
}