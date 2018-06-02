public class apex2 {

public account ac;

    public apex2(ApexPages.StandardController controller) {

      ac= (account)controller.getRecord();
   
    }

public string getthird(){

  return 'Name=' +ac.name+ 'Phone=' +ac.phone;
}
}