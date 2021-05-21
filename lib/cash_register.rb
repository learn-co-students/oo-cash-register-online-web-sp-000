class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @basket = []
        @last_transaction_title = nil
        @last_transaction_price = nil
    end

    def total
        total = @total
        total
    end

    def add_item(title, price, quantity = 1)
        counter = 0
        while counter < quantity do
            @basket << title
            @total = @total + price
            @last_transaction_title = title
            @last_transaction_price = price
            counter += 1
        end
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            @total -= (@total * (@discount / 100.00))
            "After the discount, the total comes to $#{@total.round}."
        end
    end

    def items
        @basket
    end

    def void_last_transaction
        @basket.delete(@last_transaction_title)
        if @basket.empty?
            @total = 0
        else
            @total = @total - @last_transaction_price
        end
    end

end

