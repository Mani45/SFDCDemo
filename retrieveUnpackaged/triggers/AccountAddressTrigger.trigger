trigger AccountAddressTrigger on Account (before insert,before update) {


for(Account ac:Trigger.new){
    System.debug('check new'+Trigger.isinsert);
   
   if(ac.MyHome__Match_Billing_Address__c==true){
       ac.BillingPostalCode=ac.ShippingPostalCode;
     
   }

}

/* 
map<id,account> accm=new map<id,account>();
List<Account> lstac=[select id,name,MyHome__Match_Billing_Address__c,BillingPostalCode,ShippingPostalCode from Account];
if(Trigger.isupdate){
for(Account ac:Trigger.new){
  Account ac1=new Account();
    ac1=accm.get(ac.id);
   System.debug('check update'+Trigger.isupdate);
   System.debug('check upd ff'+ac.MyHome__Match_Billing_Address__c);
   if(ac.MyHome__Match_Billing_Address__c==true){
       ac.BillingPostalCode=ac.ShippingPostalCode;
       System.debug('check upd ff'+ac.BillingPostalCode);
     
   }

}

} */

}