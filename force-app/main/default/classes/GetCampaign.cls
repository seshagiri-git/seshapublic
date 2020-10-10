public class GetCampaign
{
public List<Campaign> lp {get; set;}

public GetCampaign(ApexPages.StandardController sc){

        lp = [select Id,Name,Type,Status, Startdate, EndDate,BudgetedCost from Campaign];
}
/*public List<Campaign> lp = [select Id,Name,Type,Status, Startdate, EndDate, BudgetedCost from Campaign];
*/
public List<Campaign> getStudent()
{
 return lp;
}
}