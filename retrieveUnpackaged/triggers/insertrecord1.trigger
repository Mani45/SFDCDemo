trigger insertrecord1 on Lead (After insert) {
list<Lead> cu=new List<Lead>();
for(Lead xg:trigger.new)
{
xg.company='River';
cu.add(xg);
}

}