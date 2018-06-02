public class ReBookingController{

public string source{get;set;}
public string destination{get;set;}
public Date DOJ{get;set;}


public void searchResults(){

HTTP http = new HTTP();
       HttpRequest req = new HttpRequest();
       HttpResponse resp = new HttpResponse();
       req.setTimeout(120000);
        req.setHeader('Channel_Name', 'WEB_DIRECT');
        req.setHeader('auth_key', 'fb26b9d6-28d5-4a43-a3f2-759839d7fdd7');
        req.setHeader('BusinessUnit', 'BUS');
        req.setHeader('Country_Name', 'IND');
        req.setHeader('SelectedCurrency', 'INR');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Currency', 'INR');      
        req.setMethod('GET');
        req.setEndpoint('http://10.5.20.69/api/Bus/v1/Routes/1125/472/2017-05-24');
          resp= http.send(req);
        System.debug('Req-->'+resp.getBody());
                
                

}
/*
public list<cls_RIN> RIN;
    public list<cls_BPFilter> BPFilter;
    public list<cls_DPFilter> DPFilter;
    public cls_Aminities Aminities;
    public list<cls_travels> travels;
    public list<cls_BusTypes> BusTypes;
    public list<cls_DayTime> DayTime;
    public Integer LossData;    //4
    public Integer BookingData; //2
    public String sort; //BUSSCORE
    public list<cls_BPLst> BPLst;
    public list<cls_DPLst> DPLst;
    public String blu;  //http://origin-st.redbus.in/buslogos/country/
    public cls_BusImageBaseURL BusImageBaseURL;
    class cls_RIN {
        public String DN;   //GSRTC
        public boolean IsGroup;
        public list<cls_InvList> InvList;
    }
    public class cls_InvList {
        public cls_BusCategory BusCategory;
        public String CancellationPolicy;   //0:24:25:0;24:120:20:0;120:240:15:0;240:480:10:0;480:-1:5:0
        public boolean IsRTC;
        public Integer SourceId;    //1125
        public Integer DestinationId;   //472
        public String SourceName;   //Jamnagar
        public String DestinationName;  //Rajkot
        public boolean IsSeatLayoutAvailable;
        public boolean MealType;
        public boolean isCabService;
        public boolean isLiveTrackingAvl;
        public boolean isOfferBus;
        public String timeZone; //UTC+05:30
        public String ArrTimeZone;  //
        public String DepTimeZone;  //
        public Integer maxSeatsPerTransaction;  //6
        public String RbPrefCode;   //5
        public boolean IsBpDpSearch;
        public boolean IsBpDpReq;
        public Integer jDur;    //560
        public Integer serviceId;   //9282
        public String serviceName;  //
        public String vt;   //bus
        public list<cls_Ament> Ament;
        public boolean IsDPA;
        public Integer MxDPC;   //6
        public list<cls_BPLst> BPLst;
        public list<cls_DPLst> DPLst;
        public String ArivalTime;   //5/24/2017 6:20:00 PM
        public String BsTp; //EXPRESS
        public String DepTime;  //5/24/2017 9:00:00 AM
        public list<cls_FrLst> FrLst;
        public Integer MinFare; //81
        public boolean IsAct;
        public boolean IsLRt;
        public boolean IsSO;
        public boolean IsSpF;
        public boolean IsMTE;
        public Integer NUSA;    //0
        public Integer NSA; //42
        public Integer WnSt;    //16
        public Integer OpId;    //15447
        public Integer RtId;    //9711340
        public String Tvs;  //GSRTC
        public cls_Rtg Rtg;
        public Integer Tips;    //0
        public boolean Glry;
        public String Sort; //1
        public String BsSt; //AVAILABLE
        public cls_ActTm ActTm;
        public cls_AP AP;
        public String BsSvId;   //14
        public cls_Cmpg Cmpg;
        public String CurrencyType; //INR
        public String TimeOfDay;    //Morning
        public Integer ArTmMin; //1100
        public Integer DepTmMin;    //540
        public cls_param42 param42;
        public String ArrTimeUnixTimeStamp; //"\/Date(1495630200000+0530)\/"
        public String DepTimeUnixTimeStamp; //"\/Date(1495596600000+0530)\/"
        public String lp;   //ind/logo/15447.png
        public Integer ImageGalleryId;  //-1
        public boolean IsPC;
        public Integer busTypeId;   //0
    }
    public class cls_BusCategory {
        public boolean IsAc;
        public boolean IsNonAc;
        public boolean IsSeater;
        public boolean IsSleeper;
    }
    public class cls_Ament {
    }
    public class cls_BPLst {
        public Integer id;  //1164622
        public String bpName;   //New Office After Victoriya Bridge, Near Raj Park
        public String time; //18:30
        public String vbpName;  //New Office After Victoriya Bridge, Near Raj Park
    }
    public class cls_DPLst {
        public Integer id;  //66677
        public String bpName;   //Bigbajar
        public String time; //20:15
        public String vbpName;  //Big Bazar (150FT Ring Road)
    }
    public class cls_FrLst {
    }
    public class cls_Rtg {
        public Integer totRt;   //-1
        public cls_Rt Rt;
    }
    public class cls_Rt {
        public String Ct;   //
    }
    public class cls_ActTm {
    }
    public class cls_AP {
    }
    public class cls_Cmpg {
        public boolean Vld;
        public cls_CmpgList CmpgList;
    }
    public class cls_CmpgList {
    }
    public class cls_param42 {
        public list<cls_restStopList> restStopList;
        public list<cls_boReqParm> boReqParm;
        public cls_mandateFields mandateFields;
        public Integer rgb; //0
        public cls_priceDescriptor priceDescriptor;
        public cls_LocationSearchParams LocationSearchParams;
        public Integer busImageCount;   //0
        public String zcf;  //-1
        public String sponsor;  //RB
        public cls_viaRoutes viaRoutes;
    }
    public class cls_restStopList {
    }
    public class cls_boReqParm {
        public boolean isBpDpSl;
        public boolean isBpDpTb;
    }
    public class cls_mandateFields {
    }
    public class cls_priceDescriptor {
    }
    public class cls_LocationSearchParams {
    }
    public class cls_viaRoutes {
    }
    public class cls_BPFilter {
        public list<cls_id> id;
        public cls_loc loc;
        public String bpName;   //New Office After Victoriya Bridge, Near Raj Park
    }
    public class cls_id {
    }
    public class cls_loc {
    }
    public class cls_DPFilter {
        public list<cls_id> id;
        public cls_loc loc;
        public String bpName;   //Bigbajar
    }
    public class cls_Aminities {
        public String 4;    //Water Bottle
        public String 7;    //Charging Point
        public String 8;    //Movie
        public String 9;    //Reading Light
        public String 19;   //Track My Bus
        public String 22;   //Emergency exit
        public String 23;   //Fire Extinguisher
        public String 24;   //Hammer (to break glass)
        public String 27;   //Emergency Contact Number
    }
    public class cls_travels {
        public String 0;    //P
        public String 1;    //a
        public String 2;    //t
        public String 3;    //e
        public String 4;    //l
        public String 5;    // 
        public String 6;    //T
        public String 7;    //o
        public String 8;    //u
        public String 9;    //r
        public String 10;   //s
        public String 11;   // 
        public String 12;   //A
        public String 13;   //n
        public String 14;   //d
        public String 15;   // 
        public String 16;   //T
        public String 17;   //r
        public String 18;   //a
        public String 19;   //v
        public String 20;   //e
        public String 21;   //l
        public String 22;   //s
    }
    public class cls_BusTypes {
        public String 0;    //V
        public String 1;    //o
        public String 2;    //l
        public String 3;    //v
        public String 4;    //o
        public String 5;    // 
        public String 6;    //A
        public String 7;    ///
        public String 8;    //C
        public String 9;    // 
        public String 10;   //(
        public String 11;   //2
        public String 12;   //+
        public String 13;   //2
        public String 14;   //)
    }
    public class cls_DayTime {
        public String 0;    //E
        public String 1;    //v
        public String 2;    //e
        public String 3;    //n
        public String 4;    //i
        public String 5;    //n
        public String 6;    //g
    }
    public class cls_BusImageBaseURL {
    }
*/
}