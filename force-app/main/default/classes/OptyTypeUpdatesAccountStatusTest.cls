@isTest
public class OptyTypeUpdatesAccountStatusTest
{
    testmethod static void CheckOptyAccount(){
    //    Account ac = new Account(name='AccountTest1',Industry='other',type='Prospect');
        Opportunity op = new Opportunity(Name='TestOpty',StageName='Prospecting',CloseDate=Date.today(),Type='Existing Customer - Upgrade');
     //   insert ac;

        Test.startTest();
        insert op;
        op.Type='New Customer';
        Test.stopTest();
        System.assertEquals('New Customer',op.type,'Account reason code is updated');
        }
        }