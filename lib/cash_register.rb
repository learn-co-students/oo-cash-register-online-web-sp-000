class CashRegister
	attr_accessor :total
	attr_reader :discount, :items

	def initialize(discount=nil)
		@total = 0.00
		@discount = discount
		@items = []
	end

	def add_item(item, price, quantity=1)
		@prev_total = @total
		@total += price * quantity
		quantity.times{@items.push(item)}
	end

	def apply_discount
		@total -= @total * @discount.to_f / 100

		@discount ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
	end

	def void_last_transaction
		@total = @prev_total
	end
end
