
class CashRegister

    attr_accessor :total, :discount, :quantity, :last_transaction, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        
    end

    #add_item should accepts a title and a price and increase de total
    # acceptes an optional quantity
    # keeps track of previous total.

    def add_item(title, price, quantity=1)                                           
        self.total += price * quantity
        quantity.times do
            items << title 
        end
        self.last_transaction = price * quantity

    end

    def apply_discount
        if self.discount > 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{self.total}."
            #applies discount to the total price
                #
            #returns success message with uploaded total
            #reduces the total.

        else # if none discount
            #returns a string error message that there is no discount to apply
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
      end



end
