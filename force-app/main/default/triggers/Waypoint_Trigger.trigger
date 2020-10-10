trigger Waypoint_Trigger on Waypoint__c (after insert) {
    System.debug('Trigger fired before the record is inserted');    
}