public class DynamicComponentTest{


public Component.Apex.PageBlock getDynamicPageBlock() {

 Component.Apex.PageBlock dynamicPageBlock = getPageBlock();
 
 Component.Apex.PageBlockSection dynamicPageBlockSection =getPageBlocksection() ;
 dynamicPageBlock.childComponents.add(dynamicPageBlockSection);
 
  Component.Apex.outputtext dynamicOutputtext =getOutputText() ;
 dynamicPageBlockSection.childComponents.add(dynamicOutputtext );
 
  Component.Apex.input dynamicinput =getInput() ;
 dynamicPageBlockSection.childComponents.add(dynamicinput );
 
 Component.Apex.inputtext dynamicinputtext =getInputText() ;
 dynamicPageBlockSection.childComponents.add(dynamicinputtext );
 //dynamicPageBlockSection.childComponents.add(new Component.Apex.input (type='date'));
// dynamicPageBlockSection.childComponents.add(new Component.Apex.input (type='text'));
  return dynamicPageBlock;
}


private Component.Apex.PageBlock getPageBlock() {
        return new Component.Apex.PageBlock( title = 'Diagnosis Survey',tabStyle = 'Account' );  
    }

private Component.Apex.PageBlockSection getPageBlocksection() {
        return new Component.Apex.PageBlockSection(title='Breast Pump');  
    }  
private Component.Apex.inputtext getInputText() {
        return new Component.Apex.inputtext ( );  
    }       
private Component.Apex.Outputtext getOutputText() {
        return new Component.Apex.Outputtext( label='1. Infant Birth Date');  
    }      
private Component.Apex.input getInput() {
        return new Component.Apex.input (type='date');  
    }     
}