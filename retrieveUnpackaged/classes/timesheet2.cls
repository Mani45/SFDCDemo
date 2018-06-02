public class timesheet2
{
public String listval{get;set;}
public List<Double> lst{get;set;}
public List<Double> lsttotal{get;set;}
public Map<String,List<Double>>mapper{get;set;}
public Map<String,List<Double>>lastmap{get;set;}
public List<timesheet__c> valueupdate{get;set;}
public String startdate{get;set;}
public String enddate{get;set;}
public  Integer i{get;set;}
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
    
               
        public PageReference find()
    {
   
    monthName= DateTime.newInstanceGMT(System.Date.newInstance(2000, currentmonth , 1), System.Time.newInstance(0, 0, 0, 0)).formatGMT('MMMMMM');
   system.debug('Checking'+listval);
    attended=[select Name,Date__c,First_Half__c,Second_Half__c,dayname__c from timesheet__c where CALENDAR_MONTH(Date__c)=:currentmonth and User__c=:userid order by Date__c DESC];
    valueupdate=new List<timesheet__c>();
    mapper=new Map<String,List<Double>>();
     lastmap=new Map<String,List<Double>>();
   i=0;
    lsttotal=new List<Double>{0,0,0,0,0,0,0,0,0};
    for(timesheet__c newrecordval:attended){
    newrecordval.Statuscheck__c=false;
    valueupdate.add(newrecordval);
    
    lst=new List<Double>{0,0,0,0,0,0,0,0,0};
    
    if(newrecordval.First_Half__c=='Weekend')
     lst[0]=lst[0]+0.5;
    if(newrecordval.First_Half__c=='Field Day')
     lst[1]=lst[1]+0.5;
    if(newrecordval.First_Half__c=='State sales Meeting')
    lst[2]=lst[2]+0.5;
       if(newrecordval.First_Half__c=='Client Training/ Conference')
    lst[3]=lst[3]+0.5;
       if(newrecordval.First_Half__c=='Ascott Meeting')
     lst[4]=lst[4]+0.5;
        if(newrecordval.First_Half__c=='Public Holiday')
     lst[5]=lst[5]+0.5;
        if(newrecordval.First_Half__c=='Annual Leave')
     lst[6]=lst[6]+0.5;
     if(newrecordval.First_Half__c=='Sick Leave')
    lst[7]=lst[7]+0.5;
    
    if(newrecordval.Second_Half__c=='Weekend')
    lst[0]=lst[0]+0.5;
    if(newrecordval.Second_Half__c=='Field Day')
    lst[1]=lst[1]+0.5;
    if(newrecordval.Second_Half__c=='State sales Meeting')
    lst[2]=lst[2]+0.5;
       if(newrecordval.Second_Half__c=='Client Training/ Conference')
   lst[3]=lst[3]+0.5;
       if(newrecordval.Second_Half__c=='Ascott Meeting')
    lst[4]=lst[4]+0.5;
        if(newrecordval.Second_Half__c=='Public Holiday')
    lst[5]=lst[5]+0.5;
        if(newrecordval.Second_Half__c=='Annual Leave')
   lst[6]=lst[6]+0.5;
     if(newrecordval.Second_Half__c=='Sick Leave')
    lst[7]=lst[7]+0.5;
    lst[8]=lst[0]+lst[1]+lst[2]+lst[3]+lst[4]+lst[5]+lst[6]+lst[7];
    lsttotal[0]= lsttotal[0]+lst[0];
    lsttotal[1]= lsttotal[1]+lst[1];
    lsttotal[2]= lsttotal[2]+lst[2];
    lsttotal[3]= lsttotal[3]+lst[3];
    lsttotal[4]= lsttotal[4]+lst[4];
    lsttotal[5]= lsttotal[5]+lst[5];
    lsttotal[6]= lsttotal[6]+lst[6];
    lsttotal[7]= lsttotal[7]+lst[7];
     lsttotal[8]= lsttotal[8]+lst[8];
    Datetime yourDate = newrecordval.Date__c;
     String dateOutput = yourDate.format('dd/MM/yyyy');
      String dateString=dateOutput +' '+newrecordval.dayname__c;
      if(i==0){
        enddate=dateString;
       
    }
     i++;
    mapper.put(dateString,lst);
    startdate=dateString;
    }
     
      lastmap.put('Total Days',lsttotal);
    PageReference newocp = new PageReference('/apex/timesheet2_2');
    update valueupdate;
    return newocp ;
    }
    public PageReference generatereport() {
        return null;
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
     return null;
     }
    
    public PageReference saveone() {
    PageReference newocp = new PageReference('/apex/timesheet2');
    if(myset.contains(timeObj.Date__c)){
      ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Work details already added to time sheet for selected date.');
            ApexPages.addMessage(myMsg);
            return null;
    }
   timeObj.User__c=userid;
        insert timeObj;     
   attended=[select Name,Date__c,First_Half__c,Second_Half__c,dayname__c from timesheet__c where CALENDAR_MONTH(Date__c)=:currentmonth and User__c=:userid order by Date__c DESC];
   timeObj =new timesheet__c();
        return newocp ;
    }
      public PageReference cancel() {
      
        return null;
    }


    public timesheet2()
    {
    showAdd=false;
     userid=UserInfo.getUserId();
    DateTime d = datetime.now();
monthName= d.format('MMMMM');
  currentmonth = Date.Today().Month();
   attended=[select Name, Date__c,First_Half__c,Second_Half__c,dayname__c from timesheet__c where CALENDAR_MONTH(Date__c)=:currentmonth and User__c=:userid  order by Date__c DESC];
   myset=new set<Date>();
   for(timesheet__c recordval:attended){
      myset.add(recordval.Date__c);
   }
   timeObj =new timesheet__c();
   username=UserInfo.getName();
   
    }
}