
class CashRegister

    attr_accessor :total, :discount, :title


    def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    end


    def apply_discount
        if discount != 0
            self.total -= ((self.discount/100.0)*self.total)
            #self.total = (total * (100.0 - discount.to_f) / 100)

            "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end
        
    end

    def add_item(title, price, quantity=1)

       @total = price * quantity + @total

        quantity.times { @items << title } #not all methods can take in an argumentn and be used in this syntax #method.times() proper way = method.times{}
       
        @last_item = price * quantity
    end


    	





    def items
        @items
    
    end


    def void_last_transaction
        self.total -= @last_item
        self.total

    end
end