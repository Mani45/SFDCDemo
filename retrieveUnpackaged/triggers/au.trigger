trigger au on Account (before update) {

//Account obj=new Account(name=trigger.new[0].name);
  //  obj.name='Renukunta';

  if(trigger.old[0].name==trigger.new[0].name){
  System.debug('Names are same');
  }

}