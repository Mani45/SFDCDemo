public class AccountHandler{

public static Account insertNewAccount(String accname){

Account acc=new Account();
acc.name=accname;
try{
insert acc;
return acc;
}
catch(Exception e){
return null;
}


}

}