# require 'pry'
# class CashRegister
  
#   attr_accessor :total, :items, :discount
  
#   def initialize(total = 0, discount = 20)
#     @total = total
#     items = []
#     self.discount = discount
#   end
  
#   def add_item(title, price, quantity=0)
#     self.total += price * quantity
#     quantity.times do
#       self.items << item
#     end
    
#   end
  
#   def apply_discount
    
#   end
  
    
  
# end
class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times do
    @items << item
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
  if  @discount !=0
    self.total = (@total * (100.0 - @discount)/100).to_i
  "After the discount, the total comes to $#{self.total}."
  else
  "There is no discount to apply."
  end
end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end


end