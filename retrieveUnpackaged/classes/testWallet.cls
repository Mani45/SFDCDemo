public class testWallet{

public string response;
public void send(){
response='{"Data":[{"offerId":4619734,"offerType":"SPECIFIC","offerName":"Specific Offer","amount":1,"walletId":"xilLU2p4e7UntmldETkQEQ","isRefundable":true,"isUsed":false,"amountUsed":0,"expirationDate":"2017-10-01 18:18:46","creationDate":"2017-07-03 12:48:46","merchantId":1}],"IsWalletCreated":false,"NewToken":null,"WalletId":null,"Status":{"code":0,"statusCode":201,"error":"Amount credited sucessfully.","statusMessage":"SUCCESS","type":null},"ResponseMessage":null}';

map<string,object> IsCan = (map<string,object>)JSON.deserializeUntyped(response);

system.debug('isZcafeApplied----->'+string.valueof(IsCan.get('Status')));

    Map<String,Object> mapFare= (map<string,object>)IsCan.get('Status');
    System.debug('mapFar-->'+mapFare);
    
   System.debug('show-->'+ string.valueof(mapFare.get('statusCode')));

object lsObj=IsCan.get('Status');


}
}