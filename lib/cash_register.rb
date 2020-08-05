require 'pry'

class CashRegister
  attr_accessor :total, :prev_total, :discount, :items, :transaction_total

  def initialize(discount = false)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @prev_total = @total
    @transaction_total = (price * quantity)
    @total += @transaction_total
    quantity.times{@items << name}
    # binding.pry
  end

  def apply_discount
    if @discount != false
      @total *= ((100.0 - @discount) / 100)
      # binding.pry
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

 def void_last_transaction
   @total -= @transaction_total
   @items.pop
   @total

   if @items.length == 0
     @total = 0
   end
 end
end
