public class tt
{
public String listval{get;set;}
public String currentId{get;set;}
public boolean showupdate{get;set;}
    public List<SelectOption> monthList
    {
        get
        {
        
            
            monthList= new List<SelectOption>();
            
       monthList.add(new SelectOption('1','January'));
            monthList.add(new SelectOption('2','Febraury'));
            monthList.add(new SelectOption('3','March'));
            monthList.add(new SelectOption('4','April'));
            monthList.add(new SelectOption('5','May'));
            monthList.add(new SelectOption('6','June'));
            monthList.add(new SelectOption('7','July'));
            monthList.add(new SelectOption('8','August'));
            monthList.add(new SelectOption('9','September'));
             monthList.add(new SelectOption('10','October'));
              monthList.add(new SelectOption('11','November'));
               monthList.add(new SelectOption('12','December'));
            return monthList;
        }
        set;
    }
    
               
        public void find()
    {
   showAdd=false;
    monthName= DateTime.newInstanceGMT(System.Date.newInstance(2000, currentmonth , 1), System.Time.newInstance(0, 0, 0, 0)).formatGMT('MMMMMM');
   system.debug('Checking'+listval);
    attended=[select Name,Date__c,First_Half__c,Second_Half__c,dayname__c,Statuscheck__c from timesheet__c where CALENDAR_MONTH(Date__c)=:currentmonth and User__c=:userid order by Date__c DESC];
    }
    public PageReference generatereport() {
    PageReference newocp = new PageReference('/apex/timesheet2_1');
        return newocp;
    }
    


    public List<timesheet__c> attended {get; set;}
   
    
      set<Date> myset = new set<Date>(); 
     
    public String monthName{get;set;}
    public boolean showAdd{get;set;}
public Integer currentmonth {get;set;}
    public timesheet__c timeObj {get; set;}
    public String username{get;set;}
    public String userid{get;set;}
    public PageReference save() {
 
        update attended;
        return null;
    }
    
     public PageReference addtimesheet() {
     showAdd=true;
      showupdate=false;
         timeObj =new timesheet__c();
     return null;
     }
      public PageReference updatetimesheet() {
      showupdate=true;
    showAdd=false;
  
     timeObj=[select Id,Name, Date__c,First_Half__c,Second_Half__c,dayname__c,Statuscheck__c from timesheet__c where Id=:currentId];
     return null;
     }
    
    public PageReference saveone() {
    PageReference newocp = new PageReference('/apex/timesheet2');
    if(timeObj.Date__c==null ){
      ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Please select date.');
            ApexPages.addMessage(myMsg);
            return null;
    }
    if(myset.contains(timeObj.Date__c) && timeObj.Id==null){
      ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Work details already added to time sheet for selected date.');
            ApexPages.addMessage(myMsg);
            return null;
    }
    
   timeObj.User__c=userid;
        upsert timeObj;     
   attended=[select Name,Date__c,First_Half__c,Second_Half__c,dayname__c,Statuscheck__c from timesheet__c where CALENDAR_MONTH(Date__c)=:currentmonth and User__c=:userid order by Date__c DESC];
   timeObj =new timesheet__c();
    showAdd=false;
      showupdate=false;
        return newocp ;
    }
      public PageReference cancel() {
      
        return null;
    }


    public tt()
    {
    showupdate=false;
    showAdd=false;
     userid=UserInfo.getUserId();
    DateTime d = datetime.now();
monthName= d.format('MMMMM');
  currentmonth = Date.Today().Month();
   attended=[select Name, Date__c,First_Half__c,Second_Half__c,dayname__c,Statuscheck__c from timesheet__c where CALENDAR_MONTH(Date__c)=:currentmonth and User__c=:userid  order by Date__c DESC];
   myset=new set<Date>();
   for(timesheet__c recordval:attended){
      myset.add(recordval.Date__c);
   }
   timeObj =new timesheet__c();
   username=UserInfo.getName();
   
    }
}