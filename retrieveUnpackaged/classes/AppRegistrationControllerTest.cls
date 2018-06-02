@isTest
public class AppRegistrationControllerTest {
    static testmethod void myunittest(){
         Lead l=new Lead();
        AppRegistrationController arc=new AppRegistrationController(new ApexPages.StandardController(l));
        
        arc.InialFunctions();
        Appsubscriber__c a=new Appsubscriber__c();
        a.name='test';
        a.PersonName__c='test';
        a.Email__c='test@test.com';
        insert a;
        Appsubscriber__c asl=[select id,name,PersonName__c,Email__c from Appsubscriber__c where id=:a.id];
        System.assertEquals(asl.name,'test');
        System.assertEquals(asl.personname__c,a.personname__c);
        System.assertEquals(asl.email__c,a.email__c);
        arc.InialFunctions();
        arc.Save();
        arc.Cancel();
        arc.SubscribeUpdate();
        arc.SuceesRedirect();
        arc.sendEmailFunction(a);
    }
}