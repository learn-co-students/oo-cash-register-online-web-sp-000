
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @prev_total = 0
  end
  
  def add_item(title, price, quantity=1)
    @prev_total = @total
    @total += price * quantity
    @items.fill title, @items.size, quantity
  end
  
  def apply_discount
    return "There is no discount to apply." if @discount.nil?
    @total *= 1-@discount/100.0
    "After the discount, the total comes to $#{@total.round}."
  end
  
  def void_last_transaction
    @total = @prev_total
  end
  
end