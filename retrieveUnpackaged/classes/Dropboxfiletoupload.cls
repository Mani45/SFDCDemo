public class Dropboxfiletoupload{

public void uploadfile(){

Attachment attachments= new Attachment();
   Blob b;
   b = Blob.valueOf('Some Text');
attachments.body =b;
attachments.name='Testing';
attachments.parentid='0069000000bch6y';
//insert attachments;

list<Attachment> att=new list<Attachment>();
att=[select id,name,body,parentid from Attachment where parentid='0069000000bch6y'];

String b1=String.valueOf(att[0].body);
System.debug('Attach----'+b1);

HttpRequest request = new HttpRequest();
        request.setMethod('POST');
      request.setEndpoint('https://api-content.dropbox.com/1/files_put/auto/TestF/'+att[0].name+'.txt'); 
   //request.setEndpoint('https://api.dropbox.com/1/save_url/auto');
   // request.setHeader('Authorization', 'OAuth oauth_version="1.0", oauth_signature_method="PLAINTEXT", oauth_consumer_key="a8wqusx1i1r9wnt", oauth_token="XVSgGDJJluAAAAAAAAAACl44wvdD0nnIKdwEZtf1I5DwGhE7Yg3MMOGFL-MRxNMp, oauth_signature="a8wqusx1i1r9wnt&xecu7skjnvzng5t"');
    request.setHeader('Authorization','Bearer XVSgGDJJluAAAAAAAAAAEWS_2oyz0cse9fbZlBnqLDO3WqS8_LTs__BnlSyHbGRa');    
    //request.setHeader('Content-Length', String.valueOf(file.body.size()));
        request.setHeader('Content-Type', 'application/octet-stream');
        request.setBodyAsBlob(att[0].body);
        
        System.debug('RequestD--'+request);
        
        Http hp = new Http();
        
        HttpResponse response = hp.send(request);
        if(response != null){
            System.debug('Response---'+response.getBody());   
        }
    
        
 }
 }