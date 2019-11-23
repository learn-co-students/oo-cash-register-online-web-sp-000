require "pry"

class CashRegister
  attr_accessor :total, :discount,, :item, :add_item, :quantity, :title, :price, :new_total

  def initialize(discount = 0 )
    @total = 0
    @discount = discount
  end


  def add_item(title, price, quantity = 1)
#binding.pry
#unless @title = nil
    @total = @total + (price * quantity)
    @title = title

  end


  def apply_discount
  # binding.pry
    if  @discount == 0
        return "There is no discount to apply."
      else
          @total -= ((@discount.to_f / 100.0) * @total)
      return "After the discount, the total comes to $#{@total.to_i}."
      end
    end


  def items
 item = []
#binding.pry
unless @title == nil
@item << @title
  end
end

  def void_last_transaction
if @price == nil
    @total = 0.0
#binding.pry
else
  self - (@price * @quantity)
end


end
#  @total  = 0.0
end
