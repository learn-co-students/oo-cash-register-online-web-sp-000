class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @price = {}
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @price[title] = price*quantity
    quantity.times do
      @items << title
    end
  end
  
  def items
    @items 
  end
  
  def apply_discount
    if discount
      @total = @total - @discount * @total / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
      @total = @total - @price[@items[-1]]
  end
  
end