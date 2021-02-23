
class CashRegister
  attr_accessor :discount, :total, :last_transaction
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @last_transaction = last_transaction
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info
    @last_transaction = price * quantity
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end 
  
  def items
    item_names = []
    @cart.each do |item_info|
      for qty in 1..item_info[:quantity] m
      item_names << item_info[:name]
      end
    end
    item_names
  end
  
  def void_last_transaction
    void_item = @cart.pop
    @total -= @last_transaction
  end

end