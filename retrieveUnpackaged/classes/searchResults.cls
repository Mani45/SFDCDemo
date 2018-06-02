public class searchResults {

   public List<SelectOption> options{get;set;}
   public string selectdValues{get;set;}
   public string inputVlaue{get;set;}
   public list<string> sValues{get;set;}
   
   public searchResults (){
       options= new List<SelectOption>();
       sValues=new list<string>();
        // for(integer i=1;i<=10;i++) {      //or i=<28 or i<=30
                     //  options.add(new SelectOption(String.valueOf(i), 'value '+String.valueOf(i)));
                       options.add(new SelectOption('Marathahalli', 'Marathahalli'));
                       options.add(new SelectOption('HAL Airport', 'HAL Airport'));
                       options.add(new SelectOption('Domulur', 'Domulur'));
                       options.add(new SelectOption('Murgeshpalya', 'Murgeshpalya'));
                       options.add(new SelectOption('Hebbal', 'Hebbal'));
                       options.add(new SelectOption('Megistic', 'Megistic'));
                     
            //  }
          System.debug('optoins-->'+options);
          for(SelectOption s:options){
              sValues.add(s.getvalue());
          }         
          system.debug('sValues-->'+sValues);     
   }
   
   public void search(){
   System.debug('calling');
   options.clear();
  options.add(new SelectOption('Marathahalli', 'Marathahalli'));
                       options.add(new SelectOption('HAL Airport', 'HAL Airport'));
                       options.add(new SelectOption('Domulur', 'Domulur'));
                       options.add(new SelectOption('Murgeshpalya', 'Murgeshpalya'));
                       options.add(new SelectOption('Hebbal', 'Hebbal'));
                       options.add(new SelectOption('Megistic', 'Megistic'));
      System.debug('enterd value-->'+inputVlaue);
   // options.clear();
   List<SelectOption> options2=new List<SelectOption>();
   
      for(SelectOption s:options){
            System.debug('s value-->'+s.getvalue());
           string sOp=s.getvalue().toLowerCase() ;
           string inputV=inputVlaue.toLowerCase();
           
           //if(s.getvalue().contains(inputVlaue)) 
           //if (s.getvalue().contains(inputVlaue)){
          // if (s.getvalue().indexOf(inputVlaue)!=-1){
          // if (s.getvalue().startswith(inputVlaue)){
          if (sOp.indexOf(inputV)!=-1){
                 options2.add(new SelectOption(s.getvalue(), s.getvalue()));
           }
      
      }
      options.clear();
      System.debug('options1-->'+options);
      options.addall(options2);
      System.debug('options2-->'+options);
      
   }
   
 /*  public void test(){
   str.indexOf('r')
   if (s.getvalue().matches( "(.*)"+inputVlaue+ "(.*)"))
   
      //  if(inputVlaue.matches(s.getvalue())){
         string p='[a-z]{5}[0-9]{4}[A-Z]{1}';
        Pattern MyPattern = Pattern.compile('\\[\\@([a-z|A-Z|0-9].*?)\\]');
              //   pattern MyPattern = pattern.compile(p);
           matcher MyMatcher = MyPattern.matcher(inputVlaue);
            if(MyMatcher.matches())           
                options2.add(new SelectOption(s.getvalue(), s.getvalue()));
         //  }
   }*/
}