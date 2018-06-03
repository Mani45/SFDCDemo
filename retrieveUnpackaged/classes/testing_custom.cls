public class testing_custom
{
   public String selectedValue{get;set;}
    List<SelectOption> options {get;set;}
    public string selVlaue{get;set;}
 
   public List<SelectOption> getMyOptions(){
        options   = new List<SelectOption>();
   set<String> setUniqueRegion = new set<String>();
  for(MyHome__Country_Codes__c setting : MyHome__Country_Codes__c.getAll().values()){
    
    if(!setUniqueRegion.contains(setting.MyHome__Country_Code__c)){}
        options.add(new SelectOption(setting.MyHome__Country_Name__c, setting.MyHome__Country_Code__c));
        setUniqueRegion.add(setting.MyHome__Country_Code__c);       
    }
    return options;
  }    
  
}