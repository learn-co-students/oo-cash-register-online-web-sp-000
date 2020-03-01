require 'pry'
class CashRegister
  attr_accessor :discount, :total
  attr_reader :last_transaction
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items =[]
    @last_transaction = []
  end
  
  def add_item(item, cost, quantity = 1)
    @total = @total + (quantity * cost)
    quantity.times do
      @items << item
    end
    @last_transaction = [cost, quantity]
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total = (@total * (1.0 - (@discount/100.0))).to_i
    "After the discount, the total comes to $#{@total}."
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @last_transaction = @last_transaction[0] * @last_transaction[1]
    @total = @total - @last_transaction
  end
end
