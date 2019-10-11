
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction_total = 0
  end

  def add_item(name, price, quantity = 0)

    if quantity > 0
      i = 0
      while i < quantity
        @items << name
        i += 1
      end
    else
      @items << name
    end
    if quantity > 0
      @transaction_total = price * quantity
      @total = @total + @transaction_total
    else
      @transaction_total = price
      @total = @total + @transaction_total
    end
  end


  def apply_discount
    if discount > 0
        @discount = @discount/100.to_f
        @total = @total - (@total * (@discount))
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
  end

  def self.items
    @items
  end

  def void_last_transaction
    if @total > 0
      @total = @total - @transaction_total
    else
      0.to_f
    end
  end
  #end of class
end
