class CashRegister
  attr_accessor :total, :discount, :item_list, :last_total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_list = []
  end
  
  def add_item(title, price, quantity = 1)
    if quantity > 1 
      i = 0 
      while i < quantity
        self.item_list << title
        i += 1
      end
    else
      self.item_list << title
    end
    @total +=  price * quantity
    @last_total = @total
    @total
  end
  
  def apply_discount
    if @discount > 0 
      @discount = @discount/100.to_f
      @total -= @total * @discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    self.item_list
  end
  
  def void_last_transaction
    @total -= @last_total 
  end
  
end
