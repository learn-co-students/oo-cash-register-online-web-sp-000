require 'pry'
class CashRegister
    attr_accessor :total, :last_item
    attr_reader :discount
    
    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
        self.last_item = []

    end
    def add_item(title, price, quantity = 1)
        @total += price*quantity
        
        quantity.times do 
            @items << title
        end
        self.last_item = [title, price, quantity]
        #binding.pry
    end
    def apply_discount
        if @discount > 0 
            #binding.pry
            @total = ((100 - @discount) * @total) / 100
            
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
        
    end
    def items
        @items
    end
    def void_last_transaction
        @total = @total - self.last_item[1]*self.last_item[2]
        #binding.pry
    end
end