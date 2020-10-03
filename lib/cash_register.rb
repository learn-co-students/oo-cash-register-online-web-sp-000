class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item

  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    counter = 0
    while counter < quantity
      @items << title
      counter += 1
    end
    @last_item = price * quantity
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_item
  end
end
