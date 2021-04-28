 class CashRegister

   attr_accessor :total, :discount
   attr_reader :items

   def initialize(discount = 0)
     @total = 0.0
     @items = []
     @discount = discount
     @running_totals = [0.0]
   end

   def add_item(title, price, quantity = 1)
     @total = @total + price * quantity
     @running_totals << total
     for i in 1 .. quantity
       @items << title
     end
   end

   def apply_discount
     if @discount == 0
       return "There is no discount to apply."
     else
       @total = @total * (1 - (@discount.to_f / 100.0))
       "After the discount, the total comes to $#{@total.round(0)}."
     end
   end

   def void_last_transaction
     @running_totals.pop()
     @total = @running_totals.last()
   end

 end
