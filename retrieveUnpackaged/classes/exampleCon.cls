public class exampleCon {

    public String username { get; set; }

    public PageReference sayHello() {
        return null;
    }

    Integer count = 0;
                        
    public PageReference incrementCounter() {
            count++;
            return null;
    }
                        
    public Integer getCount() {
        return count;
    }
}