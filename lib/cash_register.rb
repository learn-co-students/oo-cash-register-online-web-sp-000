class CashRegister

  attr_accessor :total, :items, :discount, :last_transaction


   def initialize(discount = 0)
     @total = 0
     @items = []
     @discount = discount
     @last_transaction = 0
   end


  def add_item(title, price, quantity=1)
    @total += price * quantity
    @last_transaction = price * quantity
    if quantity == 1
      @items << title
    else
      quantity.times do
        @items << title
      end
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * 0.2)
      "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
