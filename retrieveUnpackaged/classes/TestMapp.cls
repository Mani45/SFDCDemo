public class TestMapp{

public void testmapmethod(){
Map<Id,Account> aMap = new Map<Id, Account>([Select Id, Name,TodayDate__c,MyHome__Active__c From Account LIMIT 2]);  
List<Account> LAcc=new List<Account>([Select Id, Name,TodayDate__c,MyHome__Active__c From Account LIMIT 2]);
Set<Account> SAcc=new Set<Account>([Select Id, Name,TodayDate__c,MyHome__Active__c From Account LIMIT 2]);
System.debug('Check Map here'+aMap);
System.debug('Check List here'+LAcc);
System.debug('Check Set here'+SAcc);

Map<Integer, String> ChMap= new Map<Integer, String>{5 => 'Jon', 6 => 'Quinton', 1 => 'Reid'};  
System.debug('Check ChMap here'+ChMap);

Map<Id,List<Account>> aListMap = new Map<Id, List<Account>>(); 
System.debug('Check aListMap here'+aListMap );

for(Account ama:[select id,name from Account limit 2]){
list<Account> l=aListMap.get(ama.id);
System.debug('list accs l-->'+l);
if (l == null) {
l=new list<Account>();
aListMap.put(ama.id,l);
System.debug('list aListMap l-->'+aListMap);
}
l.add(ama);


}



System.debug('Get ChMap element-->'+ChMap.get(5));

Map<Id, List<Id>> userRoleToUsers = new Map<Id, List<Id>>();

for(User newUser : [SELECT UserRoleId FROM User LIMIT 50000]) {
    if(userRoleToUsers.containsKey(newUser.UserRoleId)) {
        List<Id> usersId = userRoleToUsers.get(newUser.UserRoleId);
        usersId.add(newUser.Id);
        userRoleToUsers.put(newUser.UserRoleId, usersId);
    } else {
        userRoleToUsers.put(newUser.UserRoleId, new List<Id> { newUser.Id });
    }
} 
System.debug('Check ListUserMap'+userRoleToUsers);
}
}