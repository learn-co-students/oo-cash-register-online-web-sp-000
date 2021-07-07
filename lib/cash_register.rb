
class CashRegister
attr_accessor :total, :discount, :items, :previous_transaction_amount



  def initialize(employee_discount = 0.0)
      @total = 0
      @previous_transaction_amount = 0
      @discount = employee_discount
      @items = []
    end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    quantity.times { @items << title}
    @previous_transaction_amount = (price * quantity)
    @total += (price * quantity)
    @total
  end


  def apply_discount
    @total = @total * (1.0-(@discount/100.0))
    if @discount == 0.0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_int}."
    end
  end

    def void_last_transaction
      @total -= @previous_transaction_amount
    end



  end
