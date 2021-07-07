require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items
    
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, amt = 1)
        @price = price
        @total = total + price * amt
        amt.times do
            @items << title
        end
    end

    def apply_discount
       if @discount
        @discount = discount/100.to_f
        @total = total - (total * discount)
        "After the discount, the total comes to $#{total.to_i}."
       else
        "There is no discount to apply."
       end   
    end

    def items
        @items
    end

    def void_last_transaction
        @total = total - @price
    end

end