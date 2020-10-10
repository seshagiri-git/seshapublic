@RestResource(URLMapping='/ShowAccounts')
global class MyInboundWebService {

@HttpGET
global static List<account> getAccounts()
{
List<Account> accs;
try
{
    accs = [SELECT Id,Name,Phone from Account limit 15];
    return accs;
}
catch(Exception e)
{
    system.debug(e.getMessage());
}
return accs;
}

@HttpPOST
global static string CreateAccountContacts(String AccountName, String PhNum, String Ind,String fn,String ln)
{
String test;
    
    try{
   // InboundRequest reqBody = (InboundRequest)JSON.deserialize(RestContext.request.requestBody.toString(), InboundRequest.class);
    Account acc = new Account(name = AccountName, phone = phNum, industry = Ind);
    Contact cnt = new contact(lastname = ln, firstname = fn, AccountId=acc.id);
    insert acc;
    insert cnt;
    return 'AccountId='+acc.Id+' Contact Id = '+cnt.Id;
    }
    catch(Exception e)
    {
    test=e.getMessage();
    System.debug(test);
    }
    return test;

}

public class InboundRequest{
public string AccName {get;set;}
public string phone {get;set;}
public string industry{get;set;}
public string contlastname{get;set;}
public string contfirstname{get;set;}
}

}