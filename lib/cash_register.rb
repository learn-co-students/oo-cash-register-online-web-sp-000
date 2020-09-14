require "pry"
class CashRegister

    attr_accessor :total, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        #Casts the discount variable, which defaults to zero, into an instance variable
        @total = 0
        #Total starts at 0, obv
        @items = []
        #Items array starts as empty, obv
    end 

    def discount
        @discount
        #Returns the discount given at initialization, now an instance variable
    end 

    def self.total
        @total 
    end 

    def add_item(item, price, quantity = 1)
        @total += (price * quantity)
        #Iterate the total by multiplying price by quantity (default of 1) and adding to the previous total.
        #Obv if you want a new transaction you open a new instance
        quantity.times{|i| @items << item}
        #Iterates pushing each item to the array Items the number of times given in the quantity argument.
        #The |i| counts the iteration, it doesn't have to appear in the block
        @last_transaction = (price * quantity)
    end 

    def apply_discount
        if @discount > 0
            discount = (@discount.to_f) / 100
            total = @total.to_f
            @total = (total - (total * discount)).to_i
            return "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end 
    end 

    def items
        @items
    end 

    def void_last_transaction
        @total = @total - @last_transaction
        #@items.pop
        #So, we put an attr_accessor instance variable as last_transaction
        #We set last_transaction at the end of add_item as equal to price * quantity
        #Because after every instance of add_item that is the last transaction.
        #Then in order to remove it from the total, total = total - last.. etc.
    end 
end 