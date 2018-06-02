public class taprog1 {

//   public String tuser {  get; set; }

    public String tuser;
    
    
    //  setter invokes while passing data from VF to apex
    public void settuser(String s)
    {
      tuser = s;
    }
 
     // getter invokes while passing data from Apex to VF
    public String gettuser()
    {
        tuser = 'Good Morning ' + tuser;
        return tuser;
     }
   
}