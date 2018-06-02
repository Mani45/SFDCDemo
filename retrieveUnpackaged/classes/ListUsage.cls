public with sharing class ListUsage {
        
        public void listUse(){
            
            // Initialising a list
            List<String> lst = new List<String>();
            
            // Adding elemenst into list
            lst.add('ABC');
            lst.add('DEF');
            lst.add('GHI');
            lst.add('JKL');
            
            System.debug('---------Elements in the list are-------------->'+lst);
            System.debug('----------Size of the Elements are-----4-------->'+lst.size());
            System.debug('-----------Element in 2nd index--------GHI-------->'+lst[2]);

            lst.remove(1);
            System.debug('---------Elements in the list after removing are-------------->'+lst);
            System.debug('----------Size of the Elements after removing are----3--------->'+lst.size());
            
            lst.add('MNO');
            lst.add('GHI');
            lst.add('DEF');
            lst.add('1248');
            
            System.debug('---------Elements in the list after adding duplicate values are-------------->'+lst);
            System.debug('----------Size of the Elements after adding duplicate values are--------7----->'+lst.size());
            
            List<String> newlst = lst.clone();
            System.debug('---------Elements in the new list are-------------->'+newlst);
            System.debug('----------Size of the Elements in new list are-------7------>'+newlst.size());
            
            lst.clear();// removes all the elements in the list
            System.debug('-----------------List is Empty or not-------true----------->'+lst.isEmpty());
            System.debug('-----------------New List is Empty or not-------false----------->'+newlst.isEmpty());
            
            //Indexing for loop 
            for(integer i=0; i<newlst.size(); i++){
                System.debug('-----Index------->'+newlst[i]);
            }
            
            //For Each Loop
            for(String s: newlst){
                System.debug('-----For Each---------->'+s);
            }
            
            
        }
        
        
        
}