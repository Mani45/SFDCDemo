public class testcollections{
    public testcollections(){
        integer[] a =new integer[3]; 
        a[0]=10;
        a[1]=20;a[2]=30;
        for(integer i=0;i<a.size();i++)
             System.debug(a[i]);
        list<integer> l= new list<integer>();
        l.add(10);
        l.add(20);
        l.add(30);
        System.debug('List l elements are');
        for(integer i=0;i<l.size();i++) 
            System.debug(l[i]);
       
        
        list<string>l2 =new list<string>();
        l2.add('cloud computing'); l2.add('visual force');
        l2.add('apex programming');l2.add('12234abc');
        System.debug('list l2 elements');
        for(integer i=0;i<l2.size(); i++)
        System.debug(l2[i]);
        
        
        
        map<integer,string> m= new map<integer, string>();
        m.put(123,'cloud computing'); m.put(56,'visual force');
        System.debug(m.get(123));
        System.debug(m.get(56));
        
        
    }
        
        

}