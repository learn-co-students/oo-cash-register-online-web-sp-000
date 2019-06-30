require "pry"

class CashRegister
  
  attr_accessor :total, :cash_register_with_discount, :cash_register, :discount, :employee_discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item_title, item_price, optional_qty = 1)
    self.total = @total + item_price * optional_qty
    self.last_transaction = @total
    if optional_qty == 1
    @items << item_title
    elsif optional_qty !=1
    i = 0 
      loop do
      i += 1
      @items << item_title
        if i == optional_qty
        break
        end
      end
    end
  end
    
  def apply_discount
   if @discount != 0
   @total = @total - @discount/100.to_f*@total
   "After the discount, the total comes to $#{@total.to_i}."
   elsif @discount == 0 
     "There is no discount to apply."
   end
  end
    
  def void_last_transaction
    @total = @total - @last_transaction
  end
  
end
