public with sharing class WrapperDemoClass {
 Public List<WrapperClassEx> WrapperList{get;set;}
    public WrapperDemoClass(ApexPages.StandardController controller) {
      
    }
    public Boolean selected {get; set;}

   
   Public List<WrapperClassEx> getwrapperObj(){
      List<Account> accList = [Select id,name from account limit 5 offset 1];
      WrapperList = New List<WrapperClassEx>();
      for(Account acc: accList){
        WrapperList.add(New WrapperClassEx(acc,false)); 
      }
      return WrapperList;
   } 
  
   Public Class WrapperClassEx{
     Public Account accObj{get;set;}
     Public Boolean checkBox{get;set;}
    
     Public WrapperClassEx(Account accRec, boolean SelectBox){
        accObj = accRec;
        checkBox = SelectBox;
     }
   }
   List<Account> selectedAccounts = new List<Account>();

   public List<Account> GetSelectedAccounts()
            {
                if(selectedAccounts.size()>0)
                             return selectedAccounts;
                else
                    return null;
            }    

}