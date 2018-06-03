public class DispatcherContactNewController {

    public DispatcherContactNewController(ApexPages.StandardController controller) {
        this.controller = controller;
    }

    public PageReference redirect() {

        PageReference newPage;

        if (ApexPages.currentPage().getParameters().get('RecordType') == '012900000008uXK') {
            newPage = Page.timesheet2;
            return newPage.setRedirect(true);
        } else {
          newPage =new PageReference('/a0B/e?retURL=%2Fa0B%2Fo&RecordType=012900000008uXP&ent=01I9000000057nj&nooverride=1');
       
            return newPage ;
            
        }

    }

    private final ApexPages.StandardController controller;
}