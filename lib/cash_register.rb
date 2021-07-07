require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0 )
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
      quantity.times{ @items.push (title) }
      @total += price * quantity
      @last_transaction = price * quantity
  end

  def apply_discount
    if self.discount != 0
      @total -= (self.total*(discount.to_f/100)).to_i

      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
 # binding.pry

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
