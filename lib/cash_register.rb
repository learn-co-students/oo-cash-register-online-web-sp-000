	class CashRegister
  attr_accessor :total, :discount, :items, :prices, :last_transaction, :last_quatity

   def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

   def add_item(item, price, quantity=1)
    @total += (price*quantity)
    quantity.times {@items << item
      @prices << price}
    @last_transaction = price*quantity
    @last_quatity = quantity
  end

   def apply_discount
    if @discount != 0
      @total -= @total * (@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

   def items
    @items
  end

   def void_last_transaction
    @total -= @last_transaction
    @last_quatity.times{@prices.pop
      @items.pop}
  end

 end