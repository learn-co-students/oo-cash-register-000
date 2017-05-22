

class CashRegister
	attr_accessor :total, :discount, :items, :lastitem

	
	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end


	def add_item(title, price, quantity = 1)

		quantity.times do
			@items << title
		end
		self.total += price * quantity
		self.lastitem = price * quantity
	end

	def apply_discount
		if discount != 0
			dis = 1 - (discount.to_f/100)
			self.total = ((self.total*dis).round(2)).to_i
			"After the discount, the total comes to $#{self.total}."
		else
			"There is no discount to apply."
		end
	end


	def void_last_transaction
		self.total -= self.lastitem
	end









end
