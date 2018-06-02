public class actionPollar {

    public Integer count { get; set; }
    
public list<Account> accList{get;set;}
public Integer refresh{get;set;}
 
 public actionPollar(){

count=0;
 }
public void getAccount2(){

accList=[select id,name from Account where id='0019000001nKiDX'];
System.debug('calling here 1');
if(accList.size()>0){
System.debug('calling here 2');
count++;

}



}
}