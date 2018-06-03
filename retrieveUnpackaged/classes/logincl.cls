public class logincl {
   public String Password1 { get; set; }
   public String UserName1 { get; set; }
   public PageReference doLogin() {
       Integer cnt =[SELECT count() from tstudent__c where Name=:UserName1 and password__c=:Password1  ];
       if (cnt == 0)
        {              System.Debug(cnt);
                     //  ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Invalid User Name or Password'));
               // ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.WARNING,'Invalid User Name or Password'));
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO,'Invalid User Name or Password'));
                    return null;
          }       else
          {          PageReference searchPage = new pagereference('/apex/pnavigationusingbuttons');
                searchPage.setRedirect(true);
               return searchPage ;
                       }   
    }   }