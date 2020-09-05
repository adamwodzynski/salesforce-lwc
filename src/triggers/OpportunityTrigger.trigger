trigger OpportunityTrigger on Opportunity (before insert, before update) {
   if (Trigger.isInsert && Trigger.isBefore) {
   
        for (Opportunity opp : Trigger.new)
            if ( opp.SetBoxes__c == true){
                 Double a = 10;
                 opp.NumberOfBoxes__c = a;
            }
        
    }

    if (Trigger.isUpdate && Trigger.isBefore) {
        for (Opportunity opp : Trigger.new)
            if (opp.SetBoxes__c == true){
                Double a = 10;
                opp.NumberOfBoxes__c = a;
            }
    }

}