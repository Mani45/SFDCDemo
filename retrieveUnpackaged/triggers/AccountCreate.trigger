trigger AccountCreate on user(after update) {

Account acc=new Account();

acc.name='Test acc from Trigger';


Insert acc;

 
}