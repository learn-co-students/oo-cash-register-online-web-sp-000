class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
    @multiplier = []
  end

  def add_item(item,price, multiplier = 1)
    counter = 0
    while counter < multiplier
      @items << item
      @total += price
      @prices << price
      @multiplier << multiplier
      counter += 1
    end
  end

  def apply_discount
    if @discount == 0
       "There is no discount to apply."
    else
      @total = @total * (100-@discount)/100
       "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    counter = 0
    while counter < @multiplier.last
      last = @prices.last
      @total -= last
      @prices.pop
      @items.pop
      @total
      counter += 1
    end
  end

end
