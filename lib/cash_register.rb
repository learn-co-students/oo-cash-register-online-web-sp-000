class CashRegister
  
  attr_accessor :total, :discount, :cart, :previous_total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @previous_total = 0
  end
  
  def add_item(name, cost, quantity = 1)
    cart = @cart
    i = 1
    while quantity >= i
      cart = cart.push(name)
      i = i + 1
    end
    @cart = cart
    @previous_total = @total
    subtotal = @previous_total + (cost * quantity)
    @total = subtotal
  end
  
  def apply_discount
    disc = @discount
    result =""
    if disc > 0
      disc = disc.to_i
      disc = disc*0.01
      @previous_total = @total
      subtotal = @total
      subtotal = subtotal - (subtotal * disc)
      subtotal = subtotal.to_i
      @total = subtotal
      result = "After the discount, the total comes to $#{@total}."
    else
      result = "There is no discount to apply."
    end
    return result
  end
  
  def items
    @cart
  end
  
  def void_last_transaction
    @cart.pop
    @total = @previous_total
  end
end