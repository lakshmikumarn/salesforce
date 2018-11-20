public with sharing class CampingListController {

    @AuraEnabled
    public static List<Camping_Item__c> getItems(){
        System.debug('Server Side getItems invoked..');
        return [Select Id, Name, Price__c, Quantity__c, Packed__c FROM Camping_Item__c];
    }
    
    @AuraEnabled
    public static Camping_Item__c  saveItem(Camping_Item__c campitem){
        System.debug('Inside Save Item' + campitem);
        upsert campitem;
        return campitem;
    }
}