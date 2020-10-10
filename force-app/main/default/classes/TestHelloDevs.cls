@isTest
private class TestHelloDevs{
 static testmethod void testGreeting(){
     Account a = new Account(name ='Seshu');
     
     System.assertEquals(a.name,'Seshu');
    
     }
 }