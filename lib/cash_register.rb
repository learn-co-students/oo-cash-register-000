
class CashRegister
	attr_accessor :total, :discount
	def initialize(discount = 0)
		@total = 0
		@discount = discount
	end

	def add_item(item, price, quantity = 1)
		if quantity > 1
			quantity.times { self.items << item }
			self.total += (price * quantity)
		else
			self.items << item
			self.total += price
		end
	end

	def apply_discount
		if self.discount > 0
			self.total = self.total - (self.total * 0.2)
			"After the discount, the total comes to $#{self.total.to_i}."
		else
			"There is no discount to apply."
		end
	end

	def items
		@items ||= []
	end
end