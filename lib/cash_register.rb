class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
#attr_accessor creates two methods, getter and setter
#will this value change and will I have to change it?
#only has to do with the class

  def initialize(discount = 0) #constructor
    @total = 0 #Starts at 0. Instance variables can be shared across all the methods inside the class
    @discount = discount
    @items = [] #starts at an empty list.
  end
#.new = new instance, calls for the initialize

  def add_item(item, price, quantity = 1)
    @price = price #since it is the only one, doesn't have to be an instance variable.
    self.total += price * quantity #using the writer method instead of creating a local variable
    if quantity > 1
      counter = 0
      while counter < quantity
        items << item #doesn't need to be @items
        counter += 1
      end
    else
      items << item
    end
    self.last_transaction = price * quantity #pass by reference or pass by value
  end

  # quantity.times do  (lines 17-25)
  # items << item
  #   end


  def apply_discount
    if discount > 0    #self. retrieves, no need for @
      to_take_off = (total * discount)/100 #to_take_off local not instance, only in this method
      self.total -= to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

def void_last_transaction()
  self.total -= last_transaction #self. resetting a value writer!
end


end


new_register = CashRegister.new(40)

new_register.add_item("Tooth Paste", 3, quantity = 2)

puts new_register.apply_discount
