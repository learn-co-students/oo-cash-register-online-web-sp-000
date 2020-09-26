class CashRegister

    attr_accessor :total, :last_transaction_amt, :discount, :total_before_last_transaction, :items

    def initialize(discount = 0.0)
        self.total = 0.0
        self.discount = discount
        self.items = []
    end

    def add_item(title, price, quantity = 1)
        self.total_before_last_transaction = self.total
        self.last_transaction_amt = price * quantity
        self.total += self.last_transaction_amt
        quantity.times{self.items << title}
        
    end

    def apply_discount
        if self.discount > 0
            self.total = self.total - (self.total * self.discount / 100.0)
            "After the discount, the total comes to $#{self.total.to_int}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction_amt
        self.total
    end

    def self.items
        self.items
    end

end
