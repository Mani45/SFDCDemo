trigger duplicate11 on Contact (before update,before insert) {

    map<id,contact> c=new map<id,contact>();
    for(Contact ct:Trigger.new){
    
        if(Trigger.oldmap.get(ct.id).email == Trigger.newmap.get(ct.id).email ){
         ct.adderror('Duplicate Email');
       
        }
    
    }

}