
class CashRegister
  attr_accessor :total

#_____________INITIALIZE_______________________

    def initialize(discount = 0)
      @total = 0
      @items = []
      @discount = discount
    end
#_____________ADD_ITEMS_______________________

  def add_item(item, price, quantity = 1)
    @price = price
    i = 0
    until i == quantity
      @items << item
      i += 1
    end
    @total += price * quantity
  end
#_________________ITEMS_____________________

  def items
    @items
  end
#____________APPLY_DISCOUNTS________________

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @price *= 0.2
      @total -= @price
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

#______________DISCOUNT_____________________

  def discount
    @discount
  end

#_________VOID_LAST_TRANSACTION_____________

def void_last_transaction
  @total -= @price
end


end
