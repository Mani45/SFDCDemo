public class fetchweather{
    public static string makeGetCallout(string city) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        string endpoint  = 'https://query.yahooapis.com/v1/public/yql?q=';
        String encodedURL = EncodingUtil.urlEncode('select * from weather.forecast where woeid in (select woeid from geo.places(1) where text=" '+city+', IN")', 'UTF-8');
        string endpointurl = endpoint  + encodedURL ;
        System.debug(endpointurl+'++++');
        request.setEndpoint(endpointurl);
        request.setMethod('GET');     
        HttpResponse response = http.send(request);
        System.debug(response.getBody()+'^^^^^^');
      /*  if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
             Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
             system.debug(results );
            } */
    return null;
    }
}