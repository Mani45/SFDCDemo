public class apcheck2{
    public class lwrap{
        public boolean sel {get;set;}
        public lead ld {get;set;}
     
        public lwrap(lead l){
        sel = false;
            ld = l;
         
        }
    }
    
 // To display wrap records in first Pageblock table   
    public list<lwrap> llist = new list<lwrap>();
    public list<lwrap> lrecs;
    public list<lwrap> getLrecs(){
     for(lead l : [select id,name,phone from lead limit 5])
            llist.add(new lwrap(l));
     
        return llist;
    }
    
    
 // on selection of checkbox
    public List<lead> selectedrecs = new list<lead>();
    public void selrecs(){
     
        selectedrecs.clear();
        for( lwrap lw : llist){
             if(lw.sel == true)
                selectedrecs.add(lw.ld);
        }
     
    }
    
//  Displaying Selected Records in Second PageBlock table
    
    public list<lead> srecs;
    public list<lead> getSrecs(){
         return  selectedrecs;
    }
    
}