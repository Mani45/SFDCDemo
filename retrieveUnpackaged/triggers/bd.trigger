trigger bd on Account (before delete) {
System.debug('Record Deleted'+trigger.old[0].id);
System.debug('Record Deleted by User'+trigger.old[0].name);

}