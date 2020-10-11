
class CashRegister
  
  attr_accessor :total, :discount 
  
  def initialize(discount = 0)
    total = 0 
    @total = total
    @discount = discount
    @items = []
    @price_per_item = []
  end
  
  def add_item(title, price, quantity = 0)
    if quantity == 0 
      @items << title
      @price_per_item << price
      @total += price
    else
      @items.concat([title] * quantity)
      @price_per_item.concat([price*quantity])
      @total += (price * quantity).truncate(2)
    end
    
  end
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      new_total = @total - (@total *(@discount/100.to_f))
      @total = new_total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end
  
  def price_per_item
    @price_per_item
  end
  
  def void_last_transaction
    new_total = 0
    @items.pop
    @price_per_item.pop
    @price_per_item.map{|price| new_total += price}
    @total = new_total
    if @price_per_item == []
      @total = 0.0
    end
  end
  
end