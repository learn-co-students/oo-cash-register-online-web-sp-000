require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :transaction



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @transaction = price*quantity
    quantity.times {@items << title}
    if quantity > 1
      @total = @total + (price*quantity)
    else
      @total = @total + price
    end
  end

  def apply_discount
    @discount = @discount*0.01
    @total = @total - (@total*@discount)
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.floor}."
    end
  end

  def void_last_transaction
    @total = @total - @transaction
  end





end
