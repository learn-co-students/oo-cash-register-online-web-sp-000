
class CashRegister
  #creates readers/writers for total and discount
  attr_accessor :total, :discount, :recent_items
  
#initializes an register with total of zero and an optional employee discount
def initialize(discount = nil)
  @total = 0
  @discount = discount
  @instance_items = []
end 

#adds an item by updating total price and items array
def add_item(title, price, quantity = 1)
  @total += price*quantity
  @instance_items << [title, price, quantity]
end

 #applies employee discount if appropriate      
def apply_discount
if @discount != nil 
  @total -= (@total*@discount/100)
  "After the discount, the total comes to $#{@total}."
else
  "There is no discount to apply."
end
end

#tells you what items you put into your register
def items
  instance_item_display = []
  @instance_items.each do |entry|
    quantity = entry[2]
    item = entry[0]
       quantity.times{instance_item_display << item} 
  end 
    instance_item_display
end 

def void_last_transaction
price = @instance_items[-1][1]
@total -= price
end 

end 