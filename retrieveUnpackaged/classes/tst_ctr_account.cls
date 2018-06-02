public class tst_ctr_account {

    public list<decimal> capitals{get;set;}
    public List<Integer> iterator {get; set;}
    
    public tst_ctr_account() {
        capitals=new list<decimal>(4);
        for(integer i=0;i<4;i++){
            capitals[i]=i;
        }

        iterator = new List<Integer>();
        for(integer i=0; i < capitals.size(); i++){
            iterator.add(i);
        }
    }
    
    public PageReference saveList() {
        System.debug('********' + capitals);
        Return null;
    }
    
}