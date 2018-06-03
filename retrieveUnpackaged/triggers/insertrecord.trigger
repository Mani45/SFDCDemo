trigger insertrecord on Lead (before insert) {
list<Lead> cu=new List<Lead>();
for(Lead xg:trigger.new)
{
xg.Company='Divesh';
cu.add(xg);
}

}