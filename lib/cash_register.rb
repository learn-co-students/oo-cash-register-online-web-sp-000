require "pry"
class CashRegister
  attr_accessor :total, :discount, :quantity, :items,:price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
      @price = price
      @quantity = quantity
      @total += (@price * quantity)
      if quantity > 1
        counter = 0
        while counter < quantity
          @items << item
          counter += 1
        end
      else
        @items << item
      end
  end

  def apply_discount
    if @discount > 0
      @applied_discount = (price * @discount)/100
      @total -= @applied_discount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    if @quantity > 1
      @total -= @price * @quantity
    else
      @total -= @price
    end
  end
end
