trigger AccountTrigger on Account (after insert) {
    List<Contact> contacts = new List<Contact>();
    for (Account acc : Trigger.new){
        if (acc.NewClientCheckBox__c == true){
            contacts.add(new Contact(
                Name      = acc.AccountName,
                AccountId = acc.Id
        ));
    }
}    
        insert contacts;

}