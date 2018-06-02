public class WrapperJson{


public WrapperJson(){}

public class AlertWrapper{

public String statusCode{get;set;}
public String statusMessage{get;set;}
public list<Alert> alert{get;set;}

}

public class Alert{
public String alertId{get;set;}
public String acctId{get;set;}
public String createByNam{get;set;}
public String createStp{get;set;}
public String effectDte{get;set;}
public String effectEndDte{get;set;}
public String pyld{get;set;}
public String trgtObjId{get;set;}
public String trgtObjNam{get;set;}
public String updateByNam{get;set;}
public String updateStp{get;set;}
public alertStatType alertStatType{get;set;}
public alertType alertType{get;set;}

}

public class alertStatType{
public String alertStatCde{get;set;}
public String alertStatDesc{get;set;}
public String createByNam{get;set;}
public String createStp{get;set;}
public String updateByNam{get;set;}
public String updateStp{get;set;}


}

public class alertType{

public String alertTypeCde{get;set;}
public String alertTypeDesc{get;set;}
public String createByNam{get;set;}
public String createStp{get;set;}
public String updateByNam{get;set;}
public String updateStp{get;set;}


}


}