class CashRegister
  attr_accessor :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def self.total
    @total
  end
  
  def discount
    @discount
  end
  
  def apply_discount
    if discount > 0
      @total = (@total - @discount.to_f / 100 * @total).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def add_item(item, price, quantity = 1)
    @previous = price
    quantity.times{@items << item}
    @total += price * quantity
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @previous
  end
  
end
