/* Even VF page name same as class name i.e QueryMoreThan50k */

public class QueryMoreThan50k{

    @RemoteAction 
    @readOnly
    public static list<Account> getTask(){
        return [SELECT Id FROM Account];
    }
}