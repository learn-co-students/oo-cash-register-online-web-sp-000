require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :price
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def add_item(item, price, quantity = nil)
    if quantity == nil
      @price = price
    else 
      @price = price*quantity
    end 
    if quantity == nil 
      @total = self.total + price
      @items << item 
    else
      amount = price*quantity
      @total = self.total + amount
      @items << ([item] * quantity) 
    end
  end
  
  def apply_discount
    if @discount != nil
      discount_decimal = @discount/100.0
      discount_amount = self.total*discount_decimal
      @total = (self.total - discount_amount).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items.flatten
  end
  
  def void_last_transaction
    @total = self.total - @price
  end 
  
end