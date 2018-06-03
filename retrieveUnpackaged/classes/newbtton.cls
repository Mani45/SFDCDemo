public class newbtton {
    public String var {get;set;}
    public newbtton(ApexPages.StandardController controller) {

    }
    public Pagereference pageredir()
    {

        var= ApexPages.currentPage().getParameters().get('Id'); 
        if(var!=null)
            {
            Pagereference newpage = new Pagereference ('/apex/newbutton?'+var+'&action=new');
            return newpage;
            }
        else
            {
            Pagereference newpage =Page.newbutton; 
            return newpage;
            }
        }

}