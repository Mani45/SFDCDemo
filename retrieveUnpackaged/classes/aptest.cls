global class aptest implements schedulable {      

global void execute(SchedulableContext sc) {  
    lead ld = new lead();        
    ld.lastname = 'Suresh Varms';             
    ld.company = 'accenture';            
    ld.phone = '989080980';                 
     insert ld;          
       }}