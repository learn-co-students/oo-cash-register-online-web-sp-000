class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += quantity * price
    @last_transaction = quantity * price
    quantity.times do
      @item << title
    end
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * discount * 0.01)
      "After the discount, the total comes to $#{@total.truncate()}."
    end
  end
  
  def items
    @item
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end
