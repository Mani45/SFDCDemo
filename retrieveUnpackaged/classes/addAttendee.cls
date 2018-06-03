public class addAttendee {
public Account accounts;
public Contact del;
public String currentRecordId {get;set;}
public List<Contact> addattendeeList {get;set;}
public List<Contact> delattendeeList {get;set;}
public List<Contact> attendeeList {get;set;}
public Integer totalCount {get;set;}
public Integer rowIndex {get;set;}
public List<Contact> delAttendees {get; set;} 
 
 
 public addAttendee(ApexPages.StandardController controller) {
 accounts = (Account)controller.getRecord();
 currentRecordId  ='00128000002s5b7';
 //currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
 //attendeeList = [Select id, firstName, LastName, Email, Phone from Contact where AccountId =: accounts.Id];
 attendeeList = [Select id, firstName, LastName, Email, Phone from Contact where AccountId =: currentRecordId ];
 totalCount = attendeeList.size();
 delattendeeList = new List<Contact>();
 delattendees = new List<Contact>();
 
 totalCount = attendeeList.size();
 
 system.debug(totalCount);
 
 if(totalCount==0){
 
 attendeeList.add(new Contact(AccountId = currentRecordId,LastName='Chidanand'));
 attendeeList.add(new Contact(AccountId = currentRecordId,LastName='Chetan'));
 attendeeList.add(new Contact(AccountId = currentRecordId,LastName='Robert'));
  
 }
 }
 
 
 
 public void addRow(){

rowIndex = Integer.valueOf(ApexPages.currentPage().getParameters().get('rowIndex'));

//attendeeList.add(rowIndex+1,new Contact(AccountId = '00128000002rnbM'));
if(rowindex+1 < attendeeList.size()){
      attendeeList.add(rowindex+1,new Contact(AccountId = currentRecordId));
     //attendeeList[rowindex + 1] = new Contact(AccountId = '00128000002rnbM');
     }
  else{
      attendeeList.add(new Contact(AccountId = currentRecordId));
      }


 }
 
 public PageReference ave(){
 
 upsert attendeeList;
 delete delattendeeList;
 return (new ApexPages.StandardController(accounts)).view();
 } 
 
 public void deleteRow(){
 
 rowIndex = Integer.valueOf(ApexPages.currentPage().getParameters().get('rowIndex'));
 System.debug('rowbe deleted ' + rowIndex );
 System.debug('rowm to be deleted '+attendeeList[rowIndex]);
 del = attendeeList.remove(rowIndex);
 delattendeeList.add(del);
 
 }
 }