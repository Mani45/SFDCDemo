public class except{
      
            public except(){
    
            integer[] a = new integer[] {10,20,30};
            integer b=1,c=0, d;    
         
            try {
                  d = c/b;
                   
              }
           
        Catch(Exception e){
         	System.debug(e.getMessage());   
        }
        System.debug(d);
        System.debug('any probelm');
        
    }
}