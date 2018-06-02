global class apexbatchschd implements schedulable{

    global void execute(SchedulableContext sc){
        
        apexbatch b=new apexbatch();
        
        database.executebatch(b,10);//Here 10 is batch size
        
    }
    
}