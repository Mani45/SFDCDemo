public class AccessExternalObject {

public list<MyHome__OrderDetails__x> orderObj{get;set;}

public AccessExternalObject (){
orderObj=new list<MyHome__OrderDetails__x>();
orderObj=[select id,MyHome__orderID__c,MyHome__orderLine__c,MyHome__quantity__c,MyHome__unitPrice__c from MyHome__OrderDetails__x ];

}
}