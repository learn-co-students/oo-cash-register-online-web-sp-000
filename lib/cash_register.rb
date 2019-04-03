class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @last_transaction = price * quantity
    @total += @last_transaction
    i = 0
    until i == quantity
      @items << item
      i += 1
    end
  end
  
  def apply_discount
    @total -= @total * (discount/100.to_f)
    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
end