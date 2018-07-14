public class XMLParseExample{
public list<account> accountList;
public XMLParseExample(){
accountList=new list<account>();

}
public void DomExample()
{
    Dom.Document doc = new Dom.Document();
    
    Dom.Xmlnode rootNode = doc.createRootElement('response', null, null);

     accountList= [ 
        select  id, name, 
                (select id, name, email from Contacts) 
          from  Account limit 3
    ];
          
    for (Account eachAccount : accountList) {
        Dom.Xmlnode accountNode = rootNode.addChildElement('Account', null, null);
        accountNode.setAttribute('id', eachAccount.Id);
        accountNode.setAttribute('name', eachAccount.Name);
        
        for (Contact eachContact : eachAccount.Contacts) {
            Dom.Xmlnode contactNode = accountNode.addChildElement('Contact', null, null);
            contactNode.setAttribute('id', eachContact.Id);
            contactNode.setAttribute('name', eachContact.Name);
            contactNode.setAttribute('email', eachContact.Email);
        }
    }
    
    system.debug(doc.toXmlString());            
}
}