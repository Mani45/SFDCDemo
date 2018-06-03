public class fromJSON{
 /*   public cls_questions[] questions;
   public  class cls_questions {
        public String question; //Infant Birth/Date of Birth
        public String type; //date
        public cls_answers answers;
    }
    public class cls_answers {
    }
    public static fromJSON parse(String json){
        return (fromJSON) System.JSON.deserialize(json, fromJSON.class);
    }
    
    public void getData(){
String s='{"questions":[{"question":"Infant Birth/Date of Birth","type":"date","answers":null},{"question":"Reason for Product","type":"picklist","answers":[{"ans":"Breastfeeding"}]},{"question":"Complications(Optional)","type":"picklist","answers":[{"ans":"Cleft"},{"ans":"Others"}]}]}';

    
     System.debug('check here-->'+ parse(s));
            } */
public class questionWrapper{
public String surveyQuestionID;
public String questionDesc;
public String dataType;
public String answerGroupId;
public String required;
public String groupCode;
public String controlType;
public String showOtherOption;

}

public class Questions{
   public List<questionWrapper> questions;
}

public static Questions parse2(String json) {
    system.debug('check here-->'+(Questions) System.JSON.deserialize(json, Questions.class));
    return (Questions) System.JSON.deserialize(json, Questions.class);      
}
    
}