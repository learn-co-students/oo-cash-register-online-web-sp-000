class CashRegister

    attr_accessor :total, :discount, :items, :last_item
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item = 0
    end
    
    def total
        @total
    end
    
    def add_item(title, price, quantity=1)
        @total = @total + price.to_f * quantity.to_f
        for i in 1..quantity do
            @items << title
        end
        @last_item = price.to_f * quantity.to_f
    end

    def apply_discount
        if discount !=0
            @total = @total * (1-(discount.to_f / 100.0))
            "After the discount, the total comes to $" + @total.to_i.to_s + "."
        else
            "There is no discount to apply."
        end
    end
    
    def items
        @items
    end
    
    def void_last_transaction
       @total = @total - @last_item
    end
    
end
