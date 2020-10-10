public class ParentChildExmaple{
    
    public List <Account> acc{set;get;}
    
    public ParentChildExmaple()
    {
        acc =[select name, industry,(select lastname, firstname from Contacts) from Account];
    }
}