class CashRegister

    attr_accessor :total, :items, :discount, :amount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            self.items << title
        end
        self.amount = price * quantity
        self.total += self.amount
    end

    def apply_discount
        if self.discount > 0 
            self.total -= (self.total * (self.discount.to_f/100))
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.amount
    end

end