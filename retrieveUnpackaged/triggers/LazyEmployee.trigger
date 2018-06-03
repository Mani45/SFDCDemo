trigger LazyEmployee on Case (before insert,before update) {

User userName = [Select name from User where name ='Veeramanikanta Renukunta'];

for(case a : trigger.new){
a.Status = 'New';
a.ownerId = userName.id;

}

}