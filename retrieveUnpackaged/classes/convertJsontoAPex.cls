public class convertJsontoAPex{

public string jsonString='{"094B80E153F4F0055BE4CE5802010100":{"items":{"16f47bbf53f4f0055be4ce5802020100":"CREATED","094d83ad53f4f0055be4ce5802020100":"VENDOR_TENTATIVE_SUCCESSFUL"}},"5DCF02075405F0055BE4CE5802010100":{"items":{"5dcf0d9d5405f0055be4ce5802020100":"VENDOR_TENTATIVE_SUCCESSFUL"}},"5E786D6F5405F0055BE4CE5801010100":{"items":{"5e8477ad5405f0055be4ce5801020100":"VENDOR_TENTATIVE_SUCCESSFUL"},"payments":{"5e8efc6e5405f0055be4ce5802030100":"INITIATED","5e8ed3815405f0055be4ce5802030100":"COMPLETED","5e8f10475405f0055be4ce5802030100":"DISCARDED"}}}';

public class TransationStatusResponse
   {
       public map<string, string> payments { get; set; }
       public map<string, string> items { get; set; }
   }
public void parse(){
map<string,object> pMap = (map<string,object>)JSON.deserializeUntyped(jsonString);

System.debug('pMap-->'+pMap);
map<string,object> itMap=new map<string,object>();

for(object o:pMap.values()){
 Map<string,object> msObj=(Map<string,object>)o;                
itMap.put(string.valueof(msObj.get('items')),o);

}
//System.debug('itMap-->'+);


//map<string, object> itemsMap=(map<string,object>)pMap.get('');
//System.debug('itemsMap-->'+itemsMap);
/*
map<string,string> itMap=new map<string,string>(pMap.values());


for(object o:pMap.values()){
System.debug('o-->'+o);

}
*/

/*
System.debug('items-->'+pMap.get('items'));
System.debug('pMap keys-->'+pMap.keyset());
System.debug('pMap values-->'+pMap.values());
System.debug('itemsMap-->'+itemsMap);*/
}
public Map<string,TransationStatusResponse> m{get;set;}
public void pa(){

 m=(Map<string,TransationStatusResponse>)System.JSON.deserialize(jsonString,Map<string,TransationStatusResponse>.class);
System.debug('m-->'+m);
for(object o:m.values()){
//string myd = m.get(leadRecord.Id).get(myDate);
}

for(string k:m.keyset()){
  System.debug('key-->'+k);
system.debug('get-->'+m.get(k));
  
  /* for(object o:m.values()){
       if( m.containskey(k))
        System.debug('o-->'+o);
   }*/
}

}

public void doParse(){
System.debug('jj--->'+jsonString);
TestJWrapper t=new TestJWrapper();

 t=(TestJWrapper)System.JSON.deserialize(jsonString , TestJWrapper.class);
 
 

System.debug('check-->'+t);
System.JSONToken token;

 JSONParser parser = JSON.createParser(jsonString);
    while (parser.nextToken() != null) {
      if (parser.getCurrentToken() == JSONToken.START_OBJECT) {
          parser.nextToken();
        
         
          if((parser.getCurrentToken() == JSONToken.FIELD_NAME) &&(parser.getText() == 'items' )){
             parser.nextToken(); parser.nextToken(); 
             System.debug('fieldName-->'+parser.getText());
             parser.nextToken();
             string fieldName=parser.getText();
              System.debug('fieldName-->'+parser.getText());
          }
       }
     /* System.debug('f name-->'+JSONToken.FIELD_NAME+'<--field-->'+parser.getCurrentToken() +'<--text-->'+parser.getText());
        if (parser.getCurrentToken() != JSONToken.END_OBJECT) {
               string text = parser.getText();
               System.debug('text-->'+text);
                }*/
}
}


}