require 'pry'

class CashRegister
  attr_accessor :total, :discount, :transactions, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @transactions = []
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    for i in 1..quantity do
      @items << title
    end
    @transactions << "#{title}, #{price}, #{quantity}"
  end

  def apply_discount
    result = ""
    if !@discount.nil?
      @total *= 1-@discount/100.0
      result = "After the discount, the total comes to $#{@total.to_i}."
    else
      result = "There is no discount to apply."
    end
    result
  end
  
  def void_last_transaction
    item = transactions.pop.split(", ")
    @total -= item[1].to_f * item[2].to_i
    item[2].to_i.times do
       @items.pop
     end
  end
end




#rspec ./spec/cash_register_spec.rb:6 # CashRegister ::new sets an instance variable @total on initialization to zero
#rspec ./spec/cash_register_spec.rb:10 # CashRegister ::new optionally takes an employee discount on initialization
#rspec ./spec/cash_register_spec.rb:16 # CashRegister #total returns the current total
#rspec ./spec/cash_register_spec.rb:23 # CashRegister #add_item accepts a title and a price and increases the total
#rspec ./spec/cash_register_spec.rb:27 # CashRegister #add_item also accepts an optional quantity
#rspec ./spec/cash_register_spec.rb:31 # CashRegister #add_item doesn't forget about the previous total
#rspec ./spec/cash_register_spec.rb:43 # CashRegister #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
#rspec ./spec/cash_register_spec.rb:49 # CashRegister #apply_discount the cash register was initialized with an employee discount returns success message with updated total
#rspec ./spec/cash_register_spec.rb:54 # CashRegister #apply_discount the cash register was initialized with an employee discount reduces the total
#rspec ./spec/cash_register_spec.rb:62 # CashRegister #apply_discount the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
#rspec ./spec/cash_register_spec.rb:69 # CashRegister #items returns an array containing all items that have been added
#rspec ./spec/cash_register_spec.rb:78 # CashRegister #void_last_transaction subtracts the last transaction from the total
