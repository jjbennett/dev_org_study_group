trigger AccountAddressTrigger on Account (before insert, before update) {
    for (Account accountRecord : Trigger.new) {
        if (!String.isEmpty(accountRecord.BillingPostalCode) && accountRecord.Match_Billing_Address__c) {
            accountRecord.ShippingPostalCode = accountRecord.BillingPostalCode;
        }
    }
}