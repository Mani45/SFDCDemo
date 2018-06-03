public with sharing class pr1 {
    public PageReference m1() {
    if(uname=='renus' && pwd=='mani')
     op='Login success';
     else
     op='Login failed';
        return null;
    } 


    public String op { get; set; }

    public String pwd { get; set; }


    public String uname { get; set; }
}