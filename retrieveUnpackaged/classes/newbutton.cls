public class newbutton {
  public String var {get;set;}

  public newbutton (ApexPages.StandardController controller){ }
    public Pagereference pageredir()
    {

        var= ApexPages.currentPage().getParameters().get('Id'); 
        if(var!=null)
            {
            Pagereference newpage = new Pagereference ('/apex/newbutton?'+var+'&action=edit');
            return newpage;
            }
        else
            {
            Pagereference newpage =Page.newbutton; 
            return newpage;
            }
        }
       }