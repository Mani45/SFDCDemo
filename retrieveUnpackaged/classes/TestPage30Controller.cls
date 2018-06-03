public class TestPage30Controller {

public string test{get;set;}
public string inputFirst{get;set;}
public List<Lead> leadList{get;set;}

public  TestPage30Controller (){
test='This is my First Page';
leadList=[select id,name,email,phone from Lead limit 10];

}

public void call(){

System.debug('Enterd value'+inputFirst);
}

}