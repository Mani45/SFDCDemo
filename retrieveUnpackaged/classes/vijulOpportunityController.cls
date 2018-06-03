public class vijulOpportunityController {

    private Opportunity opportunity = null;
 	private Contact contact = null;
	private String contact_list = '';
	//private String errmsg = '';
	
    public Boolean testMode = false;

	//static mainController m;
	
	public void initController(ApexPages.StandardController controller) {
		try {
      		opportunity = (Opportunity) controller.getSubject();
      		// opportunity of getSubject doesn't have all the fields, need to re-query to get the AccountId
      		opportunity = [SELECT AccountId, Name, Id from Opportunity where Id = :opportunity.id limit 1];
      		
      		//errmsg = 'Got here z';
      		
      		// Look for contacts having the same AccountId as the Opportunity
      		if (opportunity.AccountId != null) {
      			// Pick the first one that has an email address
      			for (Contact c : [SELECT Email, FirstName, LastName from Contact where AccountId = :opportunity.AccountId order by LastActivityDate desc limit 10]) {
      				if ((c.Email != '') && (c.Email != null)) {
      					//errmsg = 'Got here yy' + c.email;
      					contact = c;
      				}
      			}
      		}
      		      		
      	} catch (Exception e) {
			// no opportunity
			//errmsg += e.getMessage();
		}
		/*
      	// Create a mainController just to get the token and domain (false=don't make any AJAX calls)
      	m = new mainController(true, testMode);
      	//token = m.getToken();
      	domain = m.getDomain();
      	if (domain == m.EXAMPLE_DOMAIN || domain == null || domain == '') {
      		domain = m.DEFAULT_DOMAIN;
      	}
      	*/	      	
	}
	
    public vijulOpportunityController(ApexPages.StandardController controller) {
    	initController(controller);
    }
    
	public vijulOpportunityController(ApexPages.StandardController controller, boolean test_mode) {
		testMode = test_mode;	
		initController(controller);
	}
	
    public Opportunity getOpportunity() {
        return opportunity;
    }
    
    public Contact getContact() {
        return contact;
    }    

	/*
	public String getErrMsg() {
		return errmsg;
	}
	*/
	
	/*
	// This is called from the Opportunity or Lead controller.
	public void SyncOne() {
		/*
    	if ((opportunity != null) && (opportunity.email != null)) {
    		//System.debug('opportunity SyncOne: '+ opportunity.email);			
        	m.SyncOne(opportunity.email);
    	}		
    }
	*/
		
	static testmethod void testvijulOpportunityController() {
		System.debug('vijulOpportunityController: opportunity');
		Account a = new Account(name='TestAccount');
		insert a;					// needed to create an ID
		Contact c = new Contact(accountid=a.id, account=a, email='', firstname='first', lastname='last');
		insert c;
		c = new Contact(accountid=a.id, account=a, email='foo2@test.com', firstname='first', lastname='last');
		insert c;
		c = new Contact(accountid=a.id, account=a, email='foo3@test.com', firstname='first', lastname='last');
		insert c;		
		Opportunity o = new Opportunity(account=a, name='TestOpportunity');
		//insert o;
		ApexPages.StandardController sc = new ApexPages.StandardController(o);
		vijulOpportunityController cc = new vijulOpportunityController(sc, true); 
		System.debug('getOpportunity:');
		System.debug(cc.getOpportunity());
		System.debug('getContact:');
		System.debug(cc.getContact());
	}
}