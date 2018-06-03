Public with sharing class actionfunc {
Public String outValueSecond{get;set;}
Public String outvalue{get;set;}
Public boolean flag{get;set;}
  Public actionfunc(){
     outvalue = 'Before Value';
     outValueSecond = 'before value set in constructor';
  }
   
  Public void DemoMethod(){
   outValueSecond = 'After value set in controller method. This method is called using action support added to inputtext compoennt';
  }
}