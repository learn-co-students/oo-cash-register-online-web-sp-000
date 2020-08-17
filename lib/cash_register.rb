
class CashRegister

    attr_accessor :total, :discount


    def initialize(discount = 0)
    @discount = discount
    @total = 0
    end


    def apply_discount
      self.total.to_f % 20 == 0  
        if self.total == false
            puts "There is no discount to apply."
        end
    end

    def add_item(title, price, quantity=1)

       @total = price * quantity + @total
    
    end
end