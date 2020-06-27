class CashRegister
  
  attr_accessor = :discount, :last_item, :last_price, :last_quantity
  
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_item = ("")
    @last_price = 0
  end
  
  def discount
    @discount
  end
  
  def total=(total)
    @total = total
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @last_item = title
    @last_price = price
    @last_quantity = quantity
    @total += price * quantity
    @items << title
    if quantity > 1
      quantity -= 1
      until quantity == 0
        @items << title
        quantity -= 1
      end
    end
  end
  
  def apply_discount
    if discount > 0
      discount_float = 100 - discount
      discount_float = discount_float.to_f / 100
      @total = @total * discount_float
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @items.delete(@last_item)
    @total = @total - @last_price
    @last_quantity -= 1
    if @last_quantity >= 1
      until @last_quantity == 0
        @total = @total - @last_price
        @last_quantity -= 1
      end
    end
  end
    
    
  
end
