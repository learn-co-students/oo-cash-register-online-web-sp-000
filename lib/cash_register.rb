require "pry"
class CashRegister
    attr_accessor :total, :discount, :items
    total = {}
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @items = items
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)

    @total += sum = (price)*quantity
    @items << title 
  end

  def apply_discount
    if self.discount do
    self.add_item - (total/self.discount)
    puts "After the discount, the total comes to $#{@total}."

    end
  end


  # def items

  # end

  # def void_last_transaction
  # end
end
end
