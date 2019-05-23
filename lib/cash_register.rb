class CashRegister 
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0.0) 
    @total = 0.0
    @discount = discount.to_f
    @items = []
  end 
  
  def add_item(item, price, quantity = 1) 
    @total += price * quantity
    quantity.times do 
      @items << item 
    end 
    @last_transaction = price * quantity
  end 
  def apply_discount 
    if @discount > 0
      @total = @total-(@total*(@discount/100))
      @total = @total.to_i if @total/@total.floor == 1.0
      return "After the discount, the total comes to $#{@total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  def void_last_transaction 
    @total -= @last_transaction
  end 
end 