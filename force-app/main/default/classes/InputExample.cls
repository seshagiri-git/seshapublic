public class InputExample {
    public String name{set; get;}
    public Integer Quant{set;get;}
    public Decimal Price;
    public Decimal totalPrice{set;get;}
    public InputExample()
    {
        Price = 100;
    }
 //   public void show(){
   //     Name = "Mr. "+Name;
    //}
    public void display()
    {
        //name = "Mr. "+ name;
        totalPrice = Quant * Price;
    }
}