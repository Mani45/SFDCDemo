public class vijulLeadController {

    private Lead lead = null;

    public Boolean testMode = false;

	//static mainController m;
	
	public void initController(ApexPages.StandardController controller) {
		try {
      		lead = (Lead) controller.getSubject();
		} catch (Exception e) {
			// no lead
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
	
    public vijulLeadController(ApexPages.StandardController controller) {
    	initController(controller);
    }
    
	public vijulLeadController(ApexPages.StandardController controller, boolean test_mode) {
		testMode = test_mode;	
		initController(controller);
	}
	
    public Lead getLead() {
        return lead;
    }

	/*
	// This is called from the Lead or Lead controller.
	public void SyncOne() {
		/*
    	if ((lead != null) && (lead.email != null)) {
    		//System.debug('lead SyncOne: '+ lead.email);			
        	m.SyncOne(lead.email);
    	}		
    }
	*/
		
	static testmethod void testvijulLeadController() {
		System.debug('vijulLeadController: lead');
		lead c = new lead(email='foo@test.com', firstname='first', lastname='last');
		ApexPages.StandardController sc = new ApexPages.StandardController(c);
		vijulLeadController cc = new vijulLeadController(sc, true); 
		System.debug('vijulLeadController: lead...');
		System.debug(cc.getLead());
	}
}