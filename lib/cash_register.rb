require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last = price * quantity
  end

  def apply_discount
    if @discount.nil?
      "There is no discount to apply."
    else
      discounted_amount = @total * @discount/100
      @total -= discounted_amount
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @last
  end
end
