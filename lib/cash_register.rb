class CashRegister
  
  attr_accessor :discount, :total, :price, :items
  

  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total=(total)
    @total = total
  end
  
  def add_item(title, price, quantity = 1)
    if quantity > 1
      x = 0
      while x < quantity
        @items << title
        x += 1
      end
    else
      @items << title
    end
    @title = title 
    @price = price
    @quantity = quantity
    @total += @price * @quantity
    @last_transaction = @total
    @total
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    discount_to_float = @discount / 100.0
    add_discount = @total
    
    @total = @total - (@total * discount_to_float)
    @total
    return "After the discount, the total comes to $#{@total.floor}."
  end
  
  def items
    @items
  end

  def void_last_transaction
    @total -= @price
    if @total > 1
      @total = 0.0
    end
  end
  
end