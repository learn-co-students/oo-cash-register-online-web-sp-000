class CashRegister
	attr_accessor :total, :discount, :items

	def initialize(discount = 0)
		@total = 0
		@discount = discount

		@items = []
		@prices = []
		@quantities = []
	end

	def add_item(title, price, quantity = 1)
		@total += price * quantity
		@quantities << quantity
		quantity.times { 
			@items << title 
			@prices << price
		}
	end

	def apply_discount
		# puts @total
		# puts  (@discount.to_f / 100)
		if discount > 0
			@total = @total * (1 - (@discount.to_f / 100))
			"After the discount, the total comes to $#{@total.to_int}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		# quantity = @quantities.pop
		@quantities.pop.times {
			@items.pop
			@total -= @prices.pop
		}
	end

end
