public class ListSetMapExample2 {
    
    public List<Example>listObj{set;get;}
    public ListSetMapExample2()
    {
        listObj = new List <Example>();
        Example e1 = new Example('aaa',25,10000);
        Example e2 = new Example('bbb',26,11000);
        Example e3 = new Example('ccc',28,12000);       
        listObj.add(e1);
        listObj.add(e2);
        listObj.add(e3);
    }
}