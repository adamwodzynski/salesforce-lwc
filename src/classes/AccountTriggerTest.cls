@IsTest
public class AccountTriggerTest {
    @isTest static void CreateContactByNewAccountTest(){
        Account acc = new Account(
            AccountName          = 'Test',
            NewClientCheckBox__c = true
        );

System.startTest();
insert acc;
System.stopTest();

List <Contact> contacts = [SELECT Name FROM Contact WHERE AccountID=:acc.Id];
System.assert (contacts.size()==1);
System.assertEquals('Test',contacts[0].Name);
    }
}