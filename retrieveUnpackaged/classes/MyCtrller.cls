public with sharing class MyCtrller {

    public String addressList { get; set; }
    public MyCtrller() {
       List<String> listOfAddresses = new List<String>();
       listOfAddresses.add('\"2001 Gemini St, Houston, TX\"');
       listOfAddresses.add('\"210 E Huron St, Ann Arbor\"');
       listOfAddresses.add('\"45th Park Ave, New York\"');
    }
}