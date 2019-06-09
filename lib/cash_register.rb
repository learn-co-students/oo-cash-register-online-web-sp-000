require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def self.items
    @items
  end

  def initialize(amount = nil)
    @total = 0
    @discount = amount
    # if amount != nil
    #   @discount = amount
    # end
    @items = []
    @voidAmount = 0
  end

  def add_item(name, cost, qty = 1)
    @total = @total + (cost * qty)
    i = 0
    while i < qty
      i += 1
      @items << name
    end
    @voidAmount = (cost * qty)
  end

  def apply_discount
    # puts "discount : #{@discount}"
    # binding.pry
    if @discount != nil
      @total = @total * (1.0 - (0.01 * @discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @voidAmount  
  end
end
