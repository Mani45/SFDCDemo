public class testWrapperJson{
public String jsonString ='{"statusCode":"0","statusMessage":"success","alert":[{"alertId":"3d29d2e9-0cfd-bd70-e053-2c9788888888","acctId":"3d29d2e9-0cfd-bd70-e053-2c97f4a1e006","createByNam":"CARES","createStp":1485766890000,"effectDte":"2017-01-30","effectEndDte":"2017-01-31","pyld":"PYLD","trgtObjId":"1","trgtObjNam":"T_name1","updateByNam":"CARES","updateStp":1485766890000,"alertStatType":{"alertStatCde":123,"alertStatDesc":"ALERTDESC","createByNam":"CARES","createStp":1485762870000,"updateByNam":"CARES","updateStp":1485762870000},"alertType":{"alertTypeCde":234,"alertTypeDesc":"ALERTYPEDESC","createByNam":"CARES","createStp":1485763041000,"updateByNam":"CARES","updateStp":1485763041000}}]}';
public WrapperJson.AlertWrapper wAle{get;set;}
public testWrapperJson(){
callJsonMethod();
  }

public void callJsonMethod(){

wAle=(WrapperJson.AlertWrapper)System.JSON.deserialize(jsonString ,WrapperJson.AlertWrapper.class);
System.debug('Show json here-->'+wAle);

}

}