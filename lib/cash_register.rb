class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=nil)
        @total = 0
        @items = []
        @last_item = []
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        @items += [title] * quantity
        @total = self.total + (price * quantity)
        @last_item = [title, price, quantity]
        self.total
    end

    def apply_discount
        if (self.discount != nil)
            calc_discount = (self.discount.to_f * 0.01)
            @total = (self.total - (self.total * calc_discount))
            return "After the discount, the total comes to $#{self.total.to_i}."
        elsif (self.discount == nil)
            return "There is no discount to apply."    
        end
    end

    def void_last_transaction
        last_item = self.last_item[0]
        last_price = self.last_item[1]
        last_quantity = self.last_item[2]
        last_total = last_quantity * last_price

        @items.each do |item|
            @items.delete(last_item)
        end
        
        @total = self.total - last_total
        self.total
    end
end

test_register = CashRegister.new(20)
test_register.add_item("macbook air", 1000, 3)
test_register.add_item("macbook pro", 1600, 1)
test_register.void_last_transaction
test_register.void_last_transaction
test_register.void_last_transaction
puts test_register.items