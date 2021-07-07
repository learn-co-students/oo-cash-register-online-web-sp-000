class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity, :value

  def initialize(discount = 0)
    @total = 0
    @discount = discount || 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @value = price * quantity
       @total += @value
       quantity.times do
        @items << item
      end


  end

  def apply_discount
      if @discount > 0
        discount_percent = @discount / 100.0
        @total -= (@total * discount_percent)
        "After the discount, the total comes to $#{total.to_i}."
      else
        "There is no discount to apply."
      end
    end
     def void_last_transaction
      @total -= @value
    end
  end
