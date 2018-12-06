require 'pry'

# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction

#discount = price - 20



class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [] #also considered a method
  end

  def add_item(title, price, quantity=1) #Add items into array and find the subtotal
    @price = price
    @total += price * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    discounted_total = (total * ((100.0 - discount.to_f)/100)).to_i
     #@total = discounted_total
     if discount != 0

       @total = discounted_total
       "After the discount, the total comes to $#{@total}."
     else
       "There is no discount to apply."
     end
  end


  def void_last_transaction
     @total -= @price
   end

end
