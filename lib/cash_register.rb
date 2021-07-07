class CashRegister
 attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total=0
    @items = []
    @discount=discount
  end

  def add_item(title, price, quantity=1)
    @last_transaction = price*quantity
    @total+= @last_transaction
    quantity.times do
      @items << title
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end


  def apply_discount
     @total = @total - @total*discount/100
     if @discount == 0
       return "There is no discount to apply."
     end
     return "After the discount, the total comes to $#{@total}."
  end
end
