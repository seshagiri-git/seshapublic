public with sharing class AccountController {
    public AccountController() {    }
public static List<Account> getAllActiveAccounts() {
    return [SELECT Id, Name, Active__c from Account where Active__c = 'Yes'];
}
}