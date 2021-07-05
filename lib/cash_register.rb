class CashRegister
  attr_accessor :total, :employee_discount, :items, :prices

def initialize (employee_discount = nil)
  @total = 0
  @employee_discount = employee_discount
  @items = []
  @prices = []
  end
  
  def discount
    self.employee_discount
  end
  
  def items
    @items
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << title
      @prices << price
    end
  end
  
  def apply_discount
    if @employee_discount
      @total = @total * (1.0 - @employee_discount / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
 
 
  def void_last_transaction
    @total = @total - @prices[-1]
   
  end
  
  

 end

