class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = nil) #employee discount optional
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)#cant be set to nil
    @total += price * quantity
    @last_transaction = [title, price, quantity]

    quantity.times {@items << title}
  end

  def apply_discount
    @total == 0 ? "There is no discount to apply." :
    "After the discount, the total comes to $#{@total = @total * 8 / 10 }."
  end

  def void_last_transaction
    #index 1 of last transaction is the price of the item
   @total -= last_transaction[1]
  end
end
