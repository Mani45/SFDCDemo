public with sharing class ext {
public list<Account> alist{get;set;}
public ext(){
alist=[select id,name from Account];
}

}