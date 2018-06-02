public with sharing class acsup {

    public String displaystatus { get; set; }

    public PageReference actionsup() {
        displaystatus='action support is called ok';
        return null;
    }

}