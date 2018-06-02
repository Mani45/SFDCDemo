global class apschd implements schedulable{
  global void execute(SchedulableContext sc){
       account obj=new account();
       obj.name='Mani';
       obj.phone='9491322718';  
       insert obj;
     
  }
}