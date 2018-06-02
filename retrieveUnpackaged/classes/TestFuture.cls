public class TestFuture{

@future(callout=true)
  public static void getAllViaRoutesTins(String setTin)
  {
    //callMethod('testjson');
  }
  
  public void callMethod1(){
  callMethod('testjson');
  }
  public void callMethod(String json){
   System.debug('json coming-->'+json);
  
  }
}