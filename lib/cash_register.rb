
class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items =[]
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += quantity * price
    # if quantity > 1
    #   counter = 0
    #   while counter < quantity
        @items.fill(title, @items.size, quantity) 
    #     counter += 1
    #   end
    # else
    #   @items << title
    # end
    @last_transaction = price * quantity
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
    @total-= @last_transaction
  end
end
