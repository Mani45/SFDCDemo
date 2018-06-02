public class vijulContactController {

    private Contact contact = null;

    public Boolean testMode = false;

	//static mainController m;
	
	public void initController(ApexPages.StandardController controller) {
		try {
      		contact = (Contact) controller.getSubject();
		} catch (Exception e) {
			// no contact
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
	
    public vijulContactController(ApexPages.StandardController controller) {
    	initController(controller);
    }
    
	public vijulContactController(ApexPages.StandardController controller, boolean test_mode) {
		testMode = test_mode;	
		initController(controller);
	}
	
    public Contact getContact() {
        return contact;
    }

	/*
	// This is called from the Contact or Lead controller.
	public void SyncOne() {
		/*
    	if ((contact != null) && (contact.email != null)) {
    		//System.debug('contact SyncOne: '+ contact.email);			
        	m.SyncOne(contact.email);
    	}		
    }
	*/
		
	static testmethod void testvijulContactController() {
		System.debug('vijulContactController: contact');
		contact c = new contact(email='foo@test.com', firstname='first', lastname='last');
		ApexPages.StandardController sc = new ApexPages.StandardController(c);
		vijulContactController cc = new vijulContactController(sc, true); 
		System.debug('vijulContactController: contact...');
		System.debug(cc.getContact());
	}
}