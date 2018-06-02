public class IPAddress
    {
     public String p1 { get; set; }
    public String p2 { get; set; }
    public string myIPAddress{get;set;}
       public IPAddress()
       {
          myIPAddress = ApexPages.currentPage().getHeaders().get('X-Salesforce-SIP');
          p1= ApexPages.currentPage().getHeaders().get('True-Client-IP');
           p2= ApexPages.currentPage().getHeaders().get('X-Forwarded-For');
       }
        public String getIp1() {
        p1= ApexPages.currentPage().getHeaders().get('True-Client-IP');
        return p1;
    }
    public String getIp2() {
        p2= ApexPages.currentPage().getHeaders().get('X-Forwarded-For');
        return p2;
    }
    }