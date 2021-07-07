require 'pry'

class CashRegister
  attr_accessor :total

#_____________INITIALIZE______________________

    def initialize(discount = 0)
      @total = 0
      @items = []
      @discount = discount
    end
#_____________ADD_ITEMS_____________________

  def add_item(item, price, quantity = 1)
    @price = price.to_f
    i = 0
    until i == quantity
      @items << item
      i += 1
    end
    @total += price * quantity
    binding.pry
  end
#_________________ITEMS____________________

  def items
    @items
  end
#____________APPLY_DISCOUNTS_______________

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply"
    else
      @price *= 0.2
      @total -= @price
      puts "After the discount, the total comes to #{@total}."
    end
  end

#______________DISCOUNT____________________

  def discount
    @discount
  end



end

      cash_register_with_discount = CashRegister.new(20)
      cash_register_with_discount.add_item("macbook air", 1000)
      cash_register_with_discount.apply_discount
