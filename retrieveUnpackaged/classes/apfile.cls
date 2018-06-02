public class apfile {

  
List<account> lacc=new List<account>();
    public String status { get; set; }
     public blob cfile { get; set; }

    public PageReference doupload() {
    
    String fcontent= cfile.toString();
    String[] recs=fcontent.split('\n');
    
    
     for(integer i=0;i<recs.size();i++){
     
        string[] fields=recs[i].split(',');
        account obj=new account();
          obj.name=fields[0];
          obj.phone=fields[1];
           
        lacc.add(obj);
     }
    
     insert lacc;
        
        return null;
    }

}