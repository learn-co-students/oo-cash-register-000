require "pry"

class CashRegister

	attr_accessor :total

	def initialize(*discount)
		@total = 0
		@item_array = []
		@discount = discount[0]
	end

  def discount
  	@discount
  end

  def add_item(item, price, quantity=1)
  	quantity.times { @item_array<<item }
  	@last_transaction = price*quantity
  	@total = @total + price*quantity
  end

  def apply_discount
  	if @discount
  		@total = @total*((100.0 - @discount)/100.0)
  		"After the discount, the total comes to $#{@total.round}."
  	else
  		"There is no discount to apply."
  	end
  end

  def items
  	@item_array
  end

  def void_last_transaction
  	@total = @total - @last_transaction
  	# binding.pry
  end

end

# binding.pry







