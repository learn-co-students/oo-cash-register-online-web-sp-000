class CashRegister
  
  attr_accessor :total
  attr_reader :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @lastprice = price * quantity
    quantity.times { @items << item }
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total *= (1 - (@discount / 100.0))
      if @total % 1 == 0
        @total = @total.to_i
      end
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    @total -= @lastprice
  end
  
end
