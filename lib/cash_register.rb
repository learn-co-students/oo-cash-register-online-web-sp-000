class CashRegister
  
  attr_accessor :total, :discount, :last_transaction
  
  
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def total 
    @total
  end
  
  def add_item(title, price, quantity = 1)
    all_items = Array.new(quantity) {title}
    all_items.map {|item| @items << item}
    @last_transaction = @total
    @total += (price * quantity)    
  end
  
  def apply_discount
    @total = @total * (100 - @discount) / 100
    if @discount == 0 
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
    
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @last_transaction
  end
  
end