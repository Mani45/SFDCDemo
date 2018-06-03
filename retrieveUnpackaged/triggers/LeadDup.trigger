trigger LeadDup on Lead (before insert,before update) {

String email=trigger.new[0].email;

List<Lead> a1=[Select id from Lead where Lead.email=:email];
if(a1.size()>0)
{
trigger.new[0].email.addError('Lead Email already Exist');
}
}