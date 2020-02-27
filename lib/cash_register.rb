class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity=1)
    @quantity = quantity
    @price = price
    @total += price * quantity
    if quantity > 1
      count = 0
      until count == quantity
        items << item
        count += 1
      end
    else
      items << item
    end
  end
  
  def apply_discount
    if @discount > 0
      @total = @total -  (@price * @discount)/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    if quantity > 1
       @total = @total - (@price * @quantity)
    else
      @total = @total - @price
    end
  end
  
end
