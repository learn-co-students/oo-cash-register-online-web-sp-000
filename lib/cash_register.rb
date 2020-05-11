require 'pry'

class CashRegister

    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    # def discount(amount = 0)
    #     disc_amount = @total * amount
    #     @total = @total - disc_amount
    #     @total
    #     # binding.pry
    # end

    def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        quantity.times {@items << title}
        @last_transaction = @price * quantity
        @total = @total + (@price * quantity)
        @total
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            # For example, 20 => 20.0
            discount_float = @discount.to_f
            # For example, 20.0 / 100 = 0.2 (discount percentage)
            percentage = discount_float / 100
            # Calculates amount to be discounted from total. For example, 100 * .2 = 20
            disc_amount = @total * percentage
            # Calculates final total after discount has been subtracted.
            @total = @total - disc_amount
            "After the discount, the total comes to $#{@total.to_i}."
        end
        # binding.pry
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @last_transaction
        # if @total == 1.76
        #     @total = 0.0
        # end
        # binding.pry
    end
# binding.pry
end