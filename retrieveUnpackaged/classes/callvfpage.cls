Public with sharing class callvfpage {
 
  Public callvfpage(){
  }
   
  Public pagereference Call_VF_Page(){
    PageReference openvfpage = New Pagereference('/apex'+'/test4');
    openvfpage.setRedirect(false); 
    return openvfpage ;
    return openvfpage ;
  }
}