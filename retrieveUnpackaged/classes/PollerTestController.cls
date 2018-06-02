public class PollerTestController 
{
    
    integer m_count = 0; 
    
    public integer RefreshInterval
    {
        get{return 5;}
        set;
    }
    
    public void testAction() 
    { 
        m_count++; 
    } 
    
    public integer Count {get{return m_count;}}
    
}