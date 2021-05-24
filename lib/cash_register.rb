class CashRegister
  attr_accessor :total 
  attr_reader :discount, :item 
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item (item, price, quantity = 1)
    quantity.times do
      @item << item
    end
    @total += price * quantity
  end
  
  def apply_discount
    @total = @total - (@total * @discount / 100)
    if @total > 0
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  
end
