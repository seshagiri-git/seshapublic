public class MyFirstQueuableClass implements Queueable {
    public static void execute(QueueableContext QC)
{
    List<account> acc = [select Id,Name,Industry,Site from Account];
    List<Account> accList = new List<Account>();
    for(Account a : acc)
    {
        if(a.Site == null || a.Site == '')
        {	a.Site = 'Boston';      
        }
        accList.add(a);
    }
    update accList;    
}    
}