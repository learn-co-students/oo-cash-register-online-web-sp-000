#add items of varying quantities and prices
#calculate discounts
#keep track of what is added to it
#void the last transatctoin

class CashRegister

  attr_accessor :total, :discount, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, cost, number=1)
    @total += (cost * number)
    number.times {@items << item}
    @last_item = cost * number
  end

  def apply_discount
    if @discount != 0
      take_off = self.total * (self.discount / 100.0)
      self.total = (self.total - take_off).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_item
  end

end
