class CashRegister
  
  attr_accessor :total, :discount,:previous_total
  
  def initialize(discount=nil)
  @total=0
  @previous_total=0
  @discount=discount
  @all=[]
end

def add_item(title,price,quantity=nil)
  if(quantity)
  new_price=price*quantity
  self.total+=new_price
  self.previous_total=self.total-new_price
  @all.fill(title, @all.size, quantity)
else
  self.total+=price
  @all << title
end
end

  def apply_discount
    if(self.discount)
    self.total=(self.total-(self.total*self.discount)/100)
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
  end
  
  def items
    @all
  end
  
  def void_last_transaction
    self.total=self.previous_total
  end
end
