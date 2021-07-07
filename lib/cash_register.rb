class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount=false)
    @total = 0.00
    @discount = 20 if discount
    @items = []
    @last_transaction = []
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
    (1..quantity).each { |x| @items << title }
    @last_transaction = [price, quantity]
  end
  
  def apply_discount
    if @discount
      @total = @total * ((100 - @discount.to_f)/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
    "There is no discount to apply."
  end
  
  def void_last_transaction
    @total -= @last_transaction[0] * @last_transaction[1]
    @items.pop(@last_transaction[1])
  end
end