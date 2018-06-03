public class SerialPopup{
public list<Contact> Items{get;set;} 
 
 public SerialPopup(){
   Items=[select id,name from Contact limit 1];
 }

}