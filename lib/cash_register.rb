class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    @items = []
    @prices = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do 
      @items << title
      @prices << price
    end
    self.total += quantity*(price)
  end
  
  def apply_discount
    if self.discount
      self.total *= (100-discount)/100.0
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= @prices[-1]
  end
end
