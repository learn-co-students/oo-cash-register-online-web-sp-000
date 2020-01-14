class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end
  
  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    @total += price * quantity
    @last_transaction << @total
    if quantity > 1
      i = 0
      while i < quantity do
        @items << title
        i += 1
      end
    else
      @items << title
    end
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @discount * 0.01 * @total
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @price * @quantity
  end
  
end