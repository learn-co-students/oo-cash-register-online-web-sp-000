class CashRegister
  attr_accessor :total, :cart, :prev_total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def discount
    @total = 20
  end
  
  def add_item(title, price, quantity = 0)
    @prev_total = self.total
    self.total += (price * quantity) if quantity > 0
    self.total += price if quantity == 0
    if quantity == 0
      1.times do
        self.cart << title
      end
    else
      quantity.times do
        self.cart << title
      end
    end
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @cart
  end
  
  def void_last_transaction
    @total = @prev_total
  end
end
