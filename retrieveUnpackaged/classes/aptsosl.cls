public class aptsosl{
public list<account> arecs { get; set; }
  public list<lead> lrecs { get; set; }
  
  
   
   public PageReference aptsosl() {
        List<List<SObject>> slist = [FIND 'cloud' IN ALL FIELDS RETURNING lead(Id, Name), account(id,name)];
    
        lrecs = ((List<lead>)slist[0]);
        arecs = ((List<account>)slist[1]);
        return null;
}
}