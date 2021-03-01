class CashRegister

  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_item = quantity * price
    @total += @last_item
    quantity.times {@items.push(title)}
  end

  def apply_discount
    if @discount == 0
      message = "There is no discount to apply."
    else
      @total *= (1 - (@discount * 0.01))
      message = "After the discount, the total comes to $#{total.round}."
    end
    message
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end




end
