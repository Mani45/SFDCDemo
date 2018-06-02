trigger aptri on Account (after insert) {

  account obj=new account(id=trigger.new[0].id);
  System.debug('Object Name=' +obj.name);
  System.debug('Object phone=' +obj.phone);
  
  System.debug('Trigger Name=' +trigger.new[0].name);
  System.debug('Trigger Phone=' +trigger.new[0].phone);
     
   obj.name='mani'+trigger.new[0].name;
     obj.phone='143'+trigger.new[0].phone; 
    update obj;
  
    // try{  //Insert obj;
  //}catch(Exception e){
  //System.debug( e);
  //} 
  
  }