class CashRegister

 attr_accessor :discount, :total, :items, :price, :quantity

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item (title, price, quantity = 1)
    @quantity = quantity
    @price = price
    @total += price*quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
  end

  def apply_discount
    if @discount > 0
      amount_off = (@total*@discount)/100
      @total -= amount_off
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def item
    @items
  end

  def void_last_transaction
    count = @quantity
    while count > 0
      @total -= @price
      count -=1
    end

  end
end
