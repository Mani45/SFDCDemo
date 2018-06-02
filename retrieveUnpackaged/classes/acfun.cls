public with sharing class acfun {
   public string displaystatus{set;get;}
    public PageReference actionfun() {
        displaystatus='action fun called ok';
        return null;
    }

}