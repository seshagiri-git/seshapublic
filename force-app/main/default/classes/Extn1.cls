public class Extn1 
{
    public Extn1(ApexPages.StandardController sc)
    {    
      //  this.accRec = (Account)sc.getRecord();
    }    
    virtual public string getData()
    { 
       return 'I am from Extn1'; 
       }
}