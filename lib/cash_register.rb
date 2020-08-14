class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @all_transactions = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @all_transactions << @price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0
      @disc = (@price * @discount)/100
      @total -= @disc
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @all_transactions.pop
    @total = @all_transactions.join.to_f
  end
end

##note: class methods- when calling in another method, must use self.att
#pay attn to floats & link_to_unless_current
#void_last_transaction method will remove the last transaction from the total. You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow. In what method of the class are you working with an individual item?