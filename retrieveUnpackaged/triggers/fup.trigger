trigger fup on tesy__c (before insert)
{
    list<tesy__c> tes_list=trigger.new;
    for(tesy__c tes:tes_list)
    {
        if(trigger.isinsert)
        {
            tes.name='welcome sir';
        }
        if(trigger.isupdate)
        {
            tes.name='updated thanq';
        }
    }
}