class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_price = 0
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity # add up price for selected quantity of items
    @last_price = price * quantity # don't forget last price
    while quantity > 0 # while there is at least 1 item, add it to the array and loop until there aren't any items left to add
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount > 0
      @total -= (@total * (@discount.to_f / 100)).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @items == []
      @total = 0.0
    else
      @total -= @last_price
    end
  end

end
