trigger my_rename_duplicates on Account (before insert)

{

 list<account> acc_list = trigger.new;

 list<account> acc_ext_list = [select id, name from account];

 for(account acc: acc_list)

 {

 integer i =0;

 for(account acc_ext: acc_ext_list)

 {

 if(acc_ext.name.contains(acc.name))

 {

 acc_ext.name = acc.name + i;

 i=i+1;

 }

 }

 if(i !=0 )

 {

 acc.name = acc.name + i;

 }

 }

 update acc_ext_list; 

}