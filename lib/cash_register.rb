
#Note that a discount is calculated as a percentage off of the total cash register price (e.g. a discount of 20 means the customer receives 20% off of their total price).

# class Person 
  
#   attr_accessor :age 
  
#   def intiailize(age = 0)
#     @age = age 
#   end 
  
#   def birthday 
#     self.age += 1 
#   end 
# end 

 
# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction
require 'pry' 

class CashRegister 
  attr_accessor :discount, :transaction_amounts
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = [] 
    @transaction_amounts = []
  end 
  
  def total 
    @total
  end
  
  def total=(value) 
    @total = value 
  end 
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity  
    quantity.times do  
      @transaction_amounts << price  * quantity 
      @items << item 
    end 
    # self.total
    # binding.pry
  end 
  
  def apply_discount 
    # divide the original total by 100 and multiply by 20 (@total / 100 * 20)
    if @total == 0
      "There is no discount to apply."
    else 
      @total -= @total / 100 * @discount 
      "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def items 
    @items 
  end 
  
  def void_last_transaction 
    @total -= @transaction_amounts.pop
  end 
  
end 




# OO Cash Register



















