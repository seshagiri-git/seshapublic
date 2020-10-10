public class Extn2 {
    public Account acc;
    public Extn2(ApexPages.StandardController sc){
        acc = (Account)sc.getRecord();
    }
    public string getData()
    {        
        return 'I am from Extn2';
    }
}