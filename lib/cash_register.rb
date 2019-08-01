class CashRegister
  
  attr_accessor :discount, :total, :groceries, :last
  
  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @groceries = []
  end
  
  def add_item(title,price,quantity = 1)
    quantity.times do
      @total += price
      @groceries << title
    end
    @last = price * quantity
  end
  
  def apply_discount
    @total *= ((100.0 - @discount) / 100.0)
    if @discount == 0.0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @groceries
  end
  
  def void_last_transaction
    @total -= @last
  end
  
end