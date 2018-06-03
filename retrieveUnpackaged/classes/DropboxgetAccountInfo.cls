public class DropboxgetAccountInfo{


public void getAccountInfo()
   {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.dropbox.com/1/account/info');
        req.setHeader('Authorization', 'Bearer XVSgGDJJluAAAAAAAAAAEWS_2oyz0cse9fbZlBnqLDO3WqS8_LTs__BnlSyHbGRa');
        req.setMethod('GET');
        req.setTimeout(60000);
        Http h = new Http();
        HttpResponse res = h.send(req);
        string resp = res.getBody();

        System.debug(' Account Information :: ' + resp);
   }
   
   }