require "pry"

class CashRegister
  attr_accessor :total, :add_item, :quantity, :new_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  #  options[:discount] ||=   @total.to_i - (@total.to_i * 0.2)

  end


  def add_item(title, price, quantity = 1)
#binding.pry
    @total = @total + (price * quantity)
  #  new_total = (@total + price) * quantity
  #  @total << new_total
  end

  def apply_discount
  # binding.pry
if  @discount == 0
  puts "There is no discount to apply."


else
binding.pry
    @total + @discount
      puts "After the discount, the total comes to #{@discount}"
    end
  end
     # @new_total = @total - (@total * 0.2)
  #self.total  - (self.total * 0.2)


end
