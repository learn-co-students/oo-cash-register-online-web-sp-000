# class CashRegister
#
#   attr_accessor :total, :discount, :last_transaction_amount, :items
#
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#
#   def add_item(title,price,quantity = 1)
#     if quantity>1
#       i=0
#       while i<quantity
#         @items << title
#         i+=1
#       end
#     else
#       @items << title
#     end
#     @last_transaction_amount = @total
#     @total += price*quantity
#     @total
#   end
#
#   def apply_discount()
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#     else
#       "There is no discount to apply."
#     end
#   end
#
#
#   def void_last_transaction()
#     @total - @last_transaction_amount
#   end
#
# end

class CashRegister
  attr_accessor :total, :discount, :price, :items, :combined_value, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @quantity = quantity
    @price = price
    @combined_value = price * quantity
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
      @total -= @combined_value


      end

end
