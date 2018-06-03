Public class extattachfile{
    Public attachment objAttachment{get; set;}
    Public case objApplicant{get; set;}
    Public extattachfile(){
        objAttachment = new Attachment();
        objApplicant = new case();
    }
    Public void saveApplicant(){
    objApplicant.origin='Phone';
        insert objApplicant;
       
        objAttachment.name='Test';
        objAttachment.ParentId = objApplicant.id;
        insert objAttachment;
    }
}