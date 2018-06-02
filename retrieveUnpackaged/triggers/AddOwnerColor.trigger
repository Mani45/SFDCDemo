trigger AddOwnerColor on Account (before insert, before update) {

  // create a set of all the unique ownerIds
  Set<id> ownerIds = new Set<id>();
  for (Account a : Trigger.new)
      ownerIds.add(a.OwnerId);  

  // query for all the User records for the unique userIds in the records
  // create a map for a lookup / hash table for the user info
  Map<id, User> owners = new Map<id, User>([Select name,IsActive,AboutMe,Favorite_Color__c from User Where Id in :ownerIds]); 
  System.debug('Check Map here'+owners);

  // iterate over the list of records being processed in the trigger and
  // set the color before being inserted or updated
  for (Account a : Trigger.new)
      a.Owner_Favorite_Color__c = owners.get(a.OwnerId).Favorite_Color__c;

}