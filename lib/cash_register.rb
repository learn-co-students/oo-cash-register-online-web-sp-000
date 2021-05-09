class CashRegister

    attr_accessor :total, :discount, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def items=(list)
        @items = list
    end
    
    def items
        @items
    end

    def add_item(title, price, quantity=1)
        @price = price
        @total += (price * quantity)
        quantity.times do
        @items << title
        end
        @last_transaction = (price * quantity)
    end

def apply_discount
    cash_value = @total * (discount.to_f / 100)
    @total -= cash_value.to_i
    if discount != 0
        return "After the discount, the total comes to $#{total}."
    else
        return "There is no discount to apply."
    end
end

def void_last_transaction
    @total -= @last_transaction
end
end
