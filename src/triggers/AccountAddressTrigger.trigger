trigger AccountAddressTrigger on Account (before insert, before update, after update) {
    List<Account> acts = Trigger.New;
    for(Account act: acts){
        if(
           act.Match_Billing_Address__c &&
           act.BillingPostalCode != act.ShippingPostalCode){
               act.ShippingPostalCode = act.BillingPostalCode;
               System.debug('Shipping code assigned ' + act.ShippingPostalCode);
           }
        
    }
    
    
}