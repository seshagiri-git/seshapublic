@isTest
public class delAccountTest{
public static testmethod void deleteAccount()
{
    Account NewAccount = new Account(name='TestAcnt',Industry='Others',type='Prospect');
    insert NewAccount;
    Contact NewContact = new Contact(lastname = 'TestContact',firstname='test',phone='123456789'); 
    ID cid = NewContact.Id;
    NewContact.accountId = NewAccount.Id;
    try
    {
        delete NewAccount;
        Contact c = [select Id, lastname from contact where Id =:cid];
        system.assertEquals(c,null);
    }
    catch(Exception e){}
}
}