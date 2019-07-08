class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items = []
  end
  
  def add_item(title, price, quantity=1)
    quantity.times {@@items << title}
    @total = @total + (price*quantity)
    @last_transaction = (price*quantity)
  end
  
  def apply_discount
      discount = total * (@discount.to_f/100)
      @discounted_total = @total.to_f - discount
      if @total == @discounted_total
        return "There is no discount to apply."
      else
        @total = @discounted_total.to_i
      return "After the discount, the total comes to $#{@total}."
      end
    end
    
    def items
      @@items
    end
    
    def void_last_transaction
      @total = @total - @last_transaction
    end
    
  
  
end
