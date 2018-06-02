global class apserial1 implements schedulable{
 global void execute(SchedulableContext sc){
  account ac=new account();
  ac.name='mani';
  ac.phone='9491322718';
  insert ac;
 }

}