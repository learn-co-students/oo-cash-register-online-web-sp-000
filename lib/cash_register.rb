class CashRegister
	attr_accessor :total
	attr_reader :discount, :items

	def initialize(discount=0)
		@total = 0.00
		@discount = discount.to_f
		@items = []
	end

	def add_item(item, price, quantity=1)
		@prev_total = @total
		@total += price * quantity
		quantity.times{@items.push(item)}
	end

	def apply_discount
		@total -= @total * @discount / 100

		@discount != 0.0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
	end

	def void_last_transaction
		@total = @prev_total
	end
end
