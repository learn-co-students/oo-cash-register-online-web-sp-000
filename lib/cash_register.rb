require 'pry'

class CashRegister
attr_accessor :discount, :total

def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
    @prices = []
    @quantity = []
end

def add_item(title, price, quantity = 1)
    @total = self.total + price * quantity
    i = 0
    while i < quantity 
        @items << title
        @prices << price
        @quantity << quantity
        i += 1
    end
end

def apply_discount
    if @discount == 0
        return "There is no discount to apply."
    else
        disc = 1 - @discount / 100
        @total = @total.to_f * disc
        return "After the discount, the total comes to $#{@total.to_i}."
    end
end

def items
    @items
end

def void_last_transaction
        index = @prices.length - 1
        price = @prices[index]
        @total = @total - price * @quantity[index].to_f
end

end

register = CashRegister.new(50)
