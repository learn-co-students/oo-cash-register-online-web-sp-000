
class CashRegister
  @@cashRegisters = []
  
  attr_accessor :total, :items, :discount, :itemPrice, :count
  
  def self.cashRegisters
    @@cashRegisters
  end
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @itemPrice = []
    @count = []
    self.class.cashRegisters << self
  end
      
  def add_item(item, price, count = 1)
    itemMeter = 0
    while itemMeter != count
      @items.push(item)
      @itemPrice.push(price.to_f)
      itemMeter += 1
    end
    @count << count
    @total += (price*count)
  end
  
  def apply_discount
    if discount != 0
      @total = (@total.to_f - (@total.to_f*(@discount.to_f/100))).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      @total
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    itemMeter = 0
    until itemMeter == @count.last
      @items.pop
      itemMeter += 1
    end
    @total = (@total.to_f - ((@itemPrice.pop.to_f)*(@count.pop.to_f)))
  end
    
end

cash_register = CashRegister.new
cash_register.add_item("tomato", 1.76, 2)
cash_register.void_last_transaction
# cash_register.void_last_transaction
print cash_register.total
print cash_register.items

