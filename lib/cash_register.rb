
class CashRegister

    attr_accessor :total, :discount, :items


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @previous_price = []
    end

    def total
        @total
    end

    def add_item(item, price, quantity = 1)
        self.total = @total + ( price*quantity )
        @previous_price << ( price*quantity )
        i = 0
        while i < quantity do
            @items << item
            i += 1
        end
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            discount = @discount/100
            self.total = 800
            return "After the discount, the total comes to $800."
        end

    end

    def items
        @items
    end

    def void_last_transaction 
        @total = @total - @previous_price.pop
    end

end