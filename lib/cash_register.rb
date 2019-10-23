require "pry"
class CashRegister
    attr_accessor :total, :discount, :items
    total = []

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
  end

  def apply_discount
    #  binding.pry
    if self.discount != 0
      @total -= (self.total*(discount.to_f/100)).to_i

      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end


  # def items

  # end

  # def void_last_transaction
  # end
end
