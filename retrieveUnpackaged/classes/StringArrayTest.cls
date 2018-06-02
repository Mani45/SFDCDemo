public class StringArrayTest{

public static list<string> generateStringArray(Integer no){

list<string> slist=new list<string>();
for(Integer i=0;i<no;i++){
slist.add('Test '+i);

}
System.debug('show slist->'+slist);
return slist;
}
}