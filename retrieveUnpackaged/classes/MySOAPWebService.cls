global with sharing class MySOAPWebService {
    webservice static SearchWrapper getRecord(String firstName) {
        // Add your code
        return null;
    }
   global SearchWrapper s;
    list<SearchWrapper> lsWrapper=new list<SearchWrapper>();
    global class SearchWrapper{
       public string fName{get;set;}
       
    }
}