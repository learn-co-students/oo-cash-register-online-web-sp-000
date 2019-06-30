class CashRegister
  attr_accessor :total, :cash_register_with_discount, :cash_register, :discount, :employee_discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    
  end
  
  def add_item(item_title, item_price, optional_qty = 1)
    self.total = @total + item_price * optional_qty
    
  end
    
  def apply_discount
    @cash_register_with_discount = self.total - @discount/100*@total
    "After"
    
  end
    
  
end
