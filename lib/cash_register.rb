class CashRegister
	attr_accessor :total
	attr_accessor :last_transaction

	def initialize(emp_discount = 0)
		@total = 0
		@emp_discount = emp_discount.to_f
		@items = []
		@last_transaction = {}
	end

	def total
		@total
	end

	def discount
		@emp_discount
	end

	def add_item(title, price, quantity = 1)
		@total += price * quantity
		
		i = 0
		while i < quantity
			@items << title
			i += 1
		end

		@last_transaction[:title] = title
		@last_transaction[:price] = price
		@last_transaction[:quantity] = quantity
	end

	def apply_discount
		if @emp_discount == 0
			"There is no discount to apply."
		else
			@total = @total * (1 - @emp_discount / 100)
			"After the discount, the total comes to $#{@total.to_i}."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total -= last_transaction[:price] * last_transaction[:quantity]
	end
end
