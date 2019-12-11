require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price*quantity

    if quantity>1
        i=0
        while i<quantity
          @items << title
          i+=1
        end
    else
    @items << title
    end
    @items
    @last_transaction = price * quantity
  end

  def apply_discount
      #@discount
      i = 0
      if @discount != 0
        @discount = @discount.to_f / 100.to_f
        @total  = @total - (@total * @discount)
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
  end


  def items
    @items
  end


  def void_last_transaction
    @total = @total - @last_transaction
  end

end
