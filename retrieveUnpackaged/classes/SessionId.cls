public with sharing class SessionId {

public String sessionId{get;set;} 
public SessionId (){
sessionId =  UserInfo.getSessionId();
}
}