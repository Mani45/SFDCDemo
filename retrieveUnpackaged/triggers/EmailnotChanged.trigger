trigger EmailnotChanged on Contact (before update) {

map<id,contact> ct=new map<id,contact>();
for(Contact c:Trigger.new){

    contact old=new contact();
    old=ct.get(c.id);
    if(c.email != old.email){
    c.email.adderror('Email cant be changed');
    
    }


}

}