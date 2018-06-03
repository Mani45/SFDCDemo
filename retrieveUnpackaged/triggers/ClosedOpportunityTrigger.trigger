trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {

List<Task> NewTasks = new List<Task>();
for(Opportunity opp:Trigger.new){
  if(opp.StageName=='Closed Won'){
     NewTasks.add(new Task(WhatID = opp.Id,Subject = 'Follow Up Test Task'));           
   }
  
}
if(NewTasks.size()>0)
insert NewTasks;

}