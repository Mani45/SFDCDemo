public class QuickyExtensionController {
  List<Invoice__c> quickyList { get; set;} 
    public QuickyExtensionController(ApexPages.StandardController controller) {
              //populate the list on page load 
            quickyList = [Select name from Invoice__c where Id = : ApexPages.currentPage().getParameters().get('id')];
}

}