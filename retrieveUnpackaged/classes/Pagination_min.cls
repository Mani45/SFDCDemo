public with sharing class Pagination_min {
    Public Integer noOfRecords{get; set;}
    Public Integer size{get;set;}
        public List<ResponseWrapper> reqWrapperList{get;set;}
            public Map<string,ResponseWrapper> mObj{get;set;}
                public set<String> keyValues{get;set;}



    public ApexPages.StandardSetController setCon {
        get{
            if(setCon == null){
                size = 10;
                string queryString = 'Select Name, Type, BillingCity, BillingState, BillingCountry from Account order by Name';
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(queryString));
                setCon.setPageSize(size);
                noOfRecords = setCon.getResultSize();
                
                
        
        string mrrJson='[{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false}]';
        reqWrapperList= (List<ResponseWrapper>)System.JSON.deserialize(mrrJson,List<ResponseWrapper>.class);       
        mObj=new  Map<string,ResponseWrapper>();
        for(ResponseWrapper r:reqWrapperList){
            mObj.put(r.tin,r);
            keyValues.add(string.valueof(r.tin));
        }        
    
                
            }
            return setCon;
        }set;
    }
     
    Public List<Account> getAccounts(){
        List<Account> accList = new List<Account>();
        for(Account a : (List<Account>)setCon.getRecords())
            accList.add(a);
        return accList;
    }
     
    public pageReference refresh() {
        setCon = null;
        getAccounts();
        setCon.setPageNumber(1);
        return null;
    }
    
    
    list<ResponseWrapper> InnerList{get; set;}
   list<ResponseWrapper> ListRequested{get; set;}
     Integer i {get; set;} 
     public Integer setPageSize {get; set;} 
   
   public Pagination_min(){
    string mrrJson='[{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false},{"FBResultId":6467331,"DateOfJourney":"15-10-2017","TIN":"SG17A68304187","CustomerName":"Oh Alvin","BoardingPointTime":"00:00","DroppingPointTime":"00:00","BoardingPointName":"Malacca","DroppingPointName":"Singapore","Country":2,"OperatorName":"KKKL Travel & Tours Pte Ltd","SourceName":"Malacca","DestinationName":"Singapore","UserId":"12092477","EmailId":"boeylee67@gmail.com","mobileNo":"6596646700","IsRated":true,"IsReviewed":false},{"FBResultId":6423076,"DateOfJourney":"29-10-2017","TIN":"SG17A30232391","CustomerName":"Nur Hazwani Hamid","BoardingPointTime":"06:00","DroppingPointTime":"00:00","BoardingPointName":"Singapore","DroppingPointName":"Kuala lumpur","Country":2,"OperatorName":"Starmart Express","SourceName":"Singapore","DestinationName":"Kuala lumpur","UserId":"12044409","EmailId":"wanie_wan1315@hotmail.sg","mobileNo":"6584882511","IsRated":false,"IsReviewed":false}]';
    reqWrapperList= (List<ResponseWrapper>)System.JSON.deserialize(mrrJson,List<ResponseWrapper>.class);       
   InnerList=new list<ResponseWrapper>();
   ListRequested=new list<ResponseWrapper>();
   InnerList=reqWrapperList;
   setPageSize = 10;
       i = 0; 
         next();         
   
   }
       public boolean hasNext{
       get{
       return hsaNextFunction();
       }set;
       }
      
       public boolean hasPrevious{
       get{
       return hasPrevious();
       }set;
       }
      
       public boolean hsaNextFunction(){       
        if(i >= InnerList.size()) {
           return false; 
       } else {
           return true; 
       }
       }
      
       public boolean hasPrevious(){
        if(i <= setPageSize) {
           return false; 
       } else {
           return true; 
       }
       }
       
       public void next() 
        {
            reqWrapperList= nextFunction();
        }
        
        public void previous() 
        {
            reqWrapperList= previousFunction();
        } 
        
        public list<ResponseWrapper> nextFunction(){   
            ListRequested=new list<ResponseWrapper>();
            integer startNumber;
            integer size = InnerList.size();
             if(hsaNextFunction())
             {
                 if(size <= (i + setPageSize))
                  {
                     startNumber = i;
                     i = size;
                  }
                  else
                  {
                   i = (i + setPageSize);
                   startNumber = (i - setPageSize);
                  }
                  
               for(integer start = startNumber; start < i; start++)
                 {
                   ListRequested.add(InnerList[start]);
                 }   
             }  
            
            return ListRequested;
        }    
        
        public list<ResponseWrapper> previousFunction(){   
        ListRequested = new list<ResponseWrapper>(); 
         integer size = InnerList.size(); 
          if(i == size)
            {
               if(math.mod(size, setPageSize) > 0)
                 {    
                   i = size - math.mod(size, setPageSize);
                 }
                else
                 {
                   i = (size - setPageSize);
                 } 
            }
            else
            {
               i = (i - setPageSize);
            }
        for(integer start = (i - setPageSize); start < i; ++start)
          {
           ListRequested.add(InnerList[start]);
          } 
       return ListRequested;
     } 
        
     public class ResponseWrapper{
        public Integer FBResultId{get;set;}
        public String DateOfJourney{get;set;}
        public String TIN{get;set;}
        public String CustomerName{get;set;}
        public String BoardingPointTime{get;set;}
        public String DroppingPointTime{get;set;}
        public String BoardingPointName{get;set;}
        public String DroppingPointName{get;set;}
        public Integer Country{get;set;}
        public String OperatorName{get;set;}
        public String SourceName{get;set;}
        public String DestinationName{get;set;}
        public String UserId{get;set;}
        public String EmailId{get;set;}
        public String mobileNo{get;set;}
        public boolean IsRated{get;set;}
        public boolean IsReviewed{get;set;}
    }
}