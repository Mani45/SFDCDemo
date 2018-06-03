public class AnimalLocator{

public string getAnimalNameById(Integer i){

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/1');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        Animal an=new Animal();
            an=parse(response.getBody());
            System.debug('get animals-->'+an);
        

if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            System.debug('results here-->'+results );
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Received the following animals:'+animals );
            for (Object animal: animals) {
                System.debug(animal);
            }
            
            List<Animal> aWrap=new List<Animal>();
            
        }
        System.debug('returned value-->'+String.valueOf(response));
        return String.valueOf(response);
}

    public Animal animal;
    
    public class Animal {
        public Integer id;
        public String name;
        public String eats;
        public String says;
    }

    
    public static Animal parse(String json) {
        return (Animal) System.JSON.deserialize(json, Animal.class);
    }

}