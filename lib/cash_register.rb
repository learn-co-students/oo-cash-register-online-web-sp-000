## Description

# We're going to create an Object Oriented Cash Register that can:
# * Add items of varying quantities and prices
# * Calculate discounts
# * Keep track of what's been added to it
# * Void the last transaction

# Objectives

# 1. Build a class with instance methods.
# 2. Call instance methods inside of other instance methods.
# 3. Use instance methods to track information pertinent to an instance of a class.

class CashRegister
    attr_accessor  :discount, :total, :price, :quantity
    @@transactions = {}

    def initialize (discount = nil)
        @price = price.to_f
        @quantity = quantity
        @discount = discount.to_i
        @total = 0
        @items = []
    end

    def total 
        @total
    end

    def add_item (item, price, quantity = 1)
        self.total += (price * quantity)
        @@transactions[item]=self.total
        quantity.times{@items << item}
     end

    def apply_discount 
         if  self.discount > 0
             self.discount = discount * 10
             self.total = self.total - self.discount
             "After the discount, the total comes to $#{@total}." 
         else
            "There is no discount to apply."
        end
    end
    def items
        @items
    end

    def void_last_transaction
      self.total=-self.price
    end
   end
