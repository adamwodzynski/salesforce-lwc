@isTest
public class OpportunityTriggerTest {
    @isTest static void SetNumberOfBoxesTest(){
    Opportunity oppToInsert = new Opportunity(
        Name        = 'Pierwsze Opp',
        StageName   = 'Prospecting',
        CloseDate   = Date.today(),
        SetBoxes__c = true
    );
    Opportunity oppToUpdate = new Opportunity(
        Name        = 'Drugie Opp',
        StageName   = 'Prospecting',
        CloseDate   = Date.today(),
        SetBoxes__c = false
    );
insert oppToUpdate;
    System.startTest();
    inster oppToInsert;
    oppToUpdate.SetBoxes__c= true;
    update oppToUpdate;
    System.stopTest();
    
    List <Opportunity> oppAfterInsert = [SELECT NumberOfBoxes__c FROM Opportunity WHERE ID =: oppToInsert.Id]; 
    List <Opportunity> oppsAfterUpdate = [SELECT NumberOfBoxes__c FROM Opportunity WHERE ID =: oppToUpdate.Id];
    System.assertEquals(10,oppToInsert[0].NumberOfBoxes__c);
    System.assertEquals(10,oppToUpdate[0].NumberOfBoxes__c);
    }
   
}
