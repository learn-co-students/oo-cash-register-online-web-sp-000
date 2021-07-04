class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, number_of_items = 1)
    if number_of_items > 1
      counter = 0
      while counter < number_of_items
        @items << title
        counter += 1
      end
    else
      @items << title
    end
    @total += price * number_of_items
    @last_transaction_amount = @total
    @total

  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end

  end

  def void_last_transaction
    @total -= @last_transaction_amount
  end

end
