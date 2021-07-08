
class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items= []
  end #of initialise

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction = price * quantity
    quantity.times do
      @items << title
    end
  end # of add_item

  def apply_discount
    total_discount = (@total/100)*@discount
    puts "total is #{@total} so total_discount is #{total_discount}"
    @total -= total_discount
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end # of apply_discount

  def void_last_transaction
    @total -= @last_transaction
  end


end #of class
