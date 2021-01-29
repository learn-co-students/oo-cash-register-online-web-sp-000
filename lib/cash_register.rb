require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    new_item = (price*quantity) #need to save new_item seperately from @total so it isn't associate with the instance variable
    @last_transaction = new_item
    @total = @total + new_item
    quantity.times {@item_array << title}
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total.to_f*((100.0 - @discount.to_f)/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @item_array
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
