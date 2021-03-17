class CashRegister
attr_reader :discount, :items
attr_accessor :total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quanity = 1)
        quanity.times do
            @items << title
        end
        @last_total = @total
        @total += price * quanity
    end

    def apply_discount
        @total -= @total * @discount / 100
        if @discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total = @last_total
    end
end