require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end 
  
  def add_item(item, price, quantity = 1)
    @quantity = quantity
    @price = price
    @total_price = price * quantity
    @total += price * quantity
      if quantity > 0 
        counter = 0 
        while counter < quantity
        @items << item 
        counter += 1 
      end
    else 
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0 
      @taking_off = (@price * @discount)/100
      @total -= @taking_off
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def item
    @items
  end 
  
  def void_last_transaction
  @total -= @total_price
  end 
  
end 
