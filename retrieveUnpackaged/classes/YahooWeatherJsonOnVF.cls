public class YahooWeatherJsonOnVF{

public YahooWeatherJsonOnVF(){

String yahooResponse2='{"query":{"count":1,"created":"2016-04-26T05:43:52Z","lang":"en-US","results":{"channel":{"units":{"distance":"mi","pressure":"in","speed":"mph","temperature":"F"},"title":"Yahoo! Weather - Nome, AK, US","link":"http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-2460286/","description":"Yahoo! Weather for Nome, AK, US","language":"en-us","lastBuildDate":"Mon, 25 Apr 2016 09:43 PM AKDT","ttl":"60","location":{"city":"Nome","country":"United States","region":" AK"},"wind":{"chill":"34","direction":"23","speed":"25"},"atmosphere":{"humidity":"61","pressure":"1000.0","rising":"0","visibility":"16.1"},"astronomy":{"sunrise":"6:49 am","sunset":"11:12 pm"},"image":{"title":"Yahoo! Weather","width":"142","height":"18","link":"http://weather.yahoo.com","url":"http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"},"item":{"title":"Conditions for Nome, AK, US at 08:00 PM AKDT","lat":"64.499474","long":"-165.405792","link":"http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-2460286/","pubDate":"Mon, 25 Apr 2016 08:00 PM AKDT","condition":{"code":"23","date":"Mon, 25 Apr 2016 08:00 PM AKDT","temp":"41","text":"Breezy"},"forecast":[{"code":"30","date":"25 Apr 2016","day":"Mon","high":"44","low":"29","text":"Partly Cloudy"},{"code":"28","date":"26 Apr 2016","day":"Tue","high":"47","low":"33","text":"Mostly Cloudy"},{"code":"28","date":"27 Apr 2016","day":"Wed","high":"45","low":"34","text":"Mostly Cloudy"},{"code":"28","date":"28 Apr 2016","day":"Thu","high":"44","low":"35","text":"Mostly Cloudy"},{"code":"30","date":"29 Apr 2016","day":"Fri","high":"43","low":"34","text":"Partly Cloudy"},{"code":"30","date":"30 Apr 2016","day":"Sat","high":"44","low":"32","text":"Partly Cloudy"},{"code":"34","date":"01 May 2016","day":"Sun","high":"42","low":"28","text":"Mostly Sunny"},{"code":"28","date":"02 May 2016","day":"Mon","high":"39","low":"31","text":"Mostly Cloudy"},{"code":"28","date":"03 May 2016","day":"Tue","high":"42","low":"34","text":"Mostly Cloudy"},{"code":"28","date":"04 May 2016","day":"Wed","high":"44","low":"35","text":"Mostly Cloudy"}],"description":"<![CDATA[<img src=\"http://l.yimg.com/a/i/us/we/52/23.gif\"/>\n<BR />\n<b>Current Conditions:</b>\n<BR />Breezy\n<BR />\n<BR />\n<b>Forecast:</b>\n<BR /> Mon - Partly Cloudy. High: 44Low: 29\n<BR /> Tue - Mostly Cloudy. High: 47Low: 33\n<BR /> Wed - Mostly Cloudy. High: 45Low: 34\n<BR /> Thu - Mostly Cloudy. High: 44Low: 35\n<BR /> Fri - Partly Cloudy. High: 43Low: 34\n<BR />\n<BR />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-2460286/\">Full Forecast at Yahoo! Weather</a>\n<BR />\n<BR />\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)\n<BR />\n]]>","guid":{"isPermaLink":"false"}}}}}}';

String yahooResponse='{"query":{"count":1,"created":"2016-04-26T05:43:52Z","lang":"en-US","results":{"channel":{"units":{"distance":"mi","pressure":"in","speed":"mph","temperature":"F"},"title":"Yahoo! Weather - Nome, AK, US","link":"http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-2460286/","description":"Yahoo! Weather for Nome, AK, US","language":"en-us","lastBuildDate":"Mon, 25 Apr 2016 09:43 PM AKDT","ttl":"60","location":{"city":"Nome","country":"United States","region":" AK"},"wind":{"chill":"34","direction":"23","speed":"25"},"atmosphere":{"humidity":"61","pressure":"1000.0","rising":"0","visibility":"16.1"},"astronomy":{"sunrise":"6:49 am","sunset":"11:12 pm"},"image":{"title":"Yahoo! Weather","width":"142","height":"18","link":"http://weather.yahoo.com","url":"http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"},"item":{"title":"Conditions for Nome, AK, US at 08:00 PM AKDT","lat":"64.499474","long":"-165.405792","link":"http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-2460286/","pubDate":"Mon, 25 Apr 2016 08:00 PM AKDT","condition":{"code":"23","date":"Mon, 25 Apr 2016 08:00 PM AKDT","temp":"41","text":"Breezy"},"forecast":[{"code":"30","date":"25 Apr 2016","day":"Mon","high":"44","low":"29","text":"Partly Cloudy"},{"code":"28","date":"26 Apr 2016","day":"Tue","high":"47","low":"33","text":"Mostly Cloudy"},{"code":"28","date":"27 Apr 2016","day":"Wed","high":"45","low":"34","text":"Mostly Cloudy"},{"code":"28","date":"28 Apr 2016","day":"Thu","high":"44","low":"35","text":"Mostly Cloudy"},{"code":"30","date":"29 Apr 2016","day":"Fri","high":"43","low":"34","text":"Partly Cloudy"},{"code":"30","date":"30 Apr 2016","day":"Sat","high":"44","low":"32","text":"Partly Cloudy"},{"code":"34","date":"01 May 2016","day":"Sun","high":"42","low":"28","text":"Mostly Sunny"},{"code":"28","date":"02 May 2016","day":"Mon","high":"39","low":"31","text":"Mostly Cloudy"},{"code":"28","date":"03 May 2016","day":"Tue","high":"42","low":"34","text":"Mostly Cloudy"},{"code":"28","date":"04 May 2016","day":"Wed","high":"44","low":"35","text":"Mostly Cloudy"}],"description":"No Description as of now","guid":{"isPermaLink":"false"}}}}}}';

jObj=parse(yahooResponse);

           JSONParser parser = JSON.createParser(yahooResponse);
            while (parser.nextToken() != null) {
                   
                    if (parser.getCurrentToken() == JSONToken.START_OBJECT) {
                        // Read entire JSON object, including its array of items.
                     
                      jObj = (YahooWrapper)parser.readValueAs(YahooWrapper.class);  
                       system.debug( jObj);  
                 }
                }


}

public YahooWrapper jObj{get;set;}

    public static YahooWrapper parse(String json) {
        return (YahooWrapper)System.JSON.deserialize(json, YahooWrapper.class);
    }

public class Condition {
        public String code {get;set;} 
        public String date2 {get;set;} 
        public String temp {get;set;} 
        public String text {get;set;} 

    }
    
    public class Wind {
        public String chill {get;set;} 
        public String direction {get;set;} 
        public String speed {get;set;} 

    }
    
    public class YahooWrapper {
        public Query query {get;set;} 

    }
    
    public class Query {
        public Integer count {get;set;} 
        public String created {get;set;} 
        public String lang {get;set;} 
        public Results results {get;set;} 

    }
    
    public class Channel {
        public Units units {get;set;} 
        public String title {get;set;} 
        public String link {get;set;} 
        public String description {get;set;} 
        public String language {get;set;} 
        public String lastBuildDate {get;set;} 
        public String ttl {get;set;} 
        public Location location {get;set;} 
        public Wind wind {get;set;} 
        public Atmosphere atmosphere {get;set;} 
        public Astronomy astronomy {get;set;} 
        public Image image {get;set;} 
        public Item item {get;set;} 

    }
    
    public class Guid {
        public String isPermaLink {get;set;} 
    }
    
    public class Image {
        public String title {get;set;} 
        public String width {get;set;} 
        public String height {get;set;} 
        public String link {get;set;} 
        public String url {get;set;} 

    }
    
    public class Units {
        public String distance {get;set;} 
        public String pressure {get;set;} 
        public String speed {get;set;} 
        public String temperature {get;set;} 

    }
    
    public class Item {
        public String title {get;set;} 
        public String lat {get;set;} 
        public String long_Z {get;set;} // in json: long
        public String link {get;set;} 
        public String pubDate {get;set;} 
        public Condition condition {get;set;} 
        public List<Forecast> forecast {get;set;} 
        public String description {get;set;} 
        public Guid guid {get;set;} 
        
    }
    
    public class Results {
        public Channel channel {get;set;} 

    }
    
    public class Atmosphere {
        public String humidity {get;set;} 
        public String pressure {get;set;} 
        public String rising {get;set;} 
        public String visibility {get;set;} 

    }
    
    public class Forecast {
        public String code {get;set;} 
        public String date2 {get;set;} 
        public String day {get;set;} 
        public String high {get;set;} 
        public String low {get;set;} 
        public String text {get;set;} 

    }
    
    public class Astronomy {
        public String sunrise {get;set;} 
        public String sunset {get;set;} 
    }
    
    public class Location {
        public String city {get;set;} 
        public String country {get;set;} 
        public String region {get;set;} 

    }

}