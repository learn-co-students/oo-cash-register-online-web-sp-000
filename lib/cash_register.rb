require 'pry'

class CashRegister
attr_accessor :total, :discount, :cart, :transactions
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @cart = []
        @transactions = []
    end

    def add_item(item, price, quantity = 1)
        quantity ? quantity.times {@cart << item} : @cart << item
        @total += price * quantity
        @transactions << [item, price, quantity]
    end
    def apply_discount
        @total -= (@total * (@discount.to_f / 100)).to_i
        if @discount == nil
            return "There is no discount to apply."
        end
        return "After the discount, the total comes to $#{@total}."
    end
    
    def items
        @cart
    end
    
    def void_last_transaction
        trans = @transactions.pop()
        price = trans[1]
        qty = trans[2]
        @total -= price * qty
        @cart.pop(qty)
        binding.pry
    end
end

