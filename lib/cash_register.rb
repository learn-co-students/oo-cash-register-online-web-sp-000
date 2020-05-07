require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction 
    
    def initialize(discount = 0)
        @total = 0
        @last_transaction = 0
        @discount = discount 
        @items = []
    end 
    
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.to_i.times do 
            @items << title
        end 
        @last_transaction = price * quantity
    end 

    def apply_discount
            if @discount != 0
                discount_in_percent = (100.0 - @discount.to_f) / 100
                updated_total = (@total * discount_in_percent).to_i
                @total = updated_total
                "After the discount, the total comes to $#{@total}."
            else  
                "There is no discount to apply."
            end 
    end 

    def void_last_transaction
        @total -= @last_transaction 
    end 
end 