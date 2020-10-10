public class AccountSetup
{
    public AccountSetup()
    {
        a= new Account(); c = new Contact(); o = new Opportunity();
    }
    public Account a {get;set;}
    public Contact c {get;set;}
    public Opportunity o {get;set;}
    
    public Account getAccount()
    {
        return a;
    }
    public Contact getContact()
    {
        return c;
    }
    
    public PageReference gotoAccount()
    {
        return Page.AccountPage;
    }
    public PageReference gotoContact()
    {
        return Page.ContactPage;
    }
    public PageReference gotoOpportunity()
    {
        return Page.OpportunityPage;
    }
    public PageReference gotoSubmitReview()
    {
        return Page.SubmitReviewPage;
    }
    public PageReference GotodetailsPage()
    {
        insert a;
        c.accountid=a.id;
        o.accountid=a.id;
        insert c;
        insert o;
        return Page.RelatedListVF;
     
    }
}