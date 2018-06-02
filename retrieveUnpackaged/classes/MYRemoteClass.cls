public with sharing class MYRemoteClass {

@RemoteAction
public static String sampleOne(){
Account acc=[select id,name from Account where id='0019000000PCzz0'];
system.debug('---RemoteAction Fired----');
return acc.name;
}
}