class CashRegister
  attr_accessor :total
  attr_reader :discount


  def initialize(total = 0)
    @total = total
    @discount = 20
  end
  def add_item(item,price,quantity = 1)
    @total = total + price*quantity
  end
  def apply_discount
    if discount != 0
      disc = total - discount*(total/100)
      @total = disc
    else
      puts "There is no discount to apply."
    end
  end
end
