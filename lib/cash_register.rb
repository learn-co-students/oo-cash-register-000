# Write your code here.
class CashRegister
  attr_accessor :total, :discount, :items, :last_sum
  def initialize(discount = 0)
    @discount = discount
	@total = 0
	@items = []
	@last_sum = 0
  end
  
  def add_item(name, price, quantity = 1)
	quantity.times {@items << name}
	@last_sum = price * quantity
    @total += @last_sum
  end
  
  def apply_discount
    return "There is no discount to apply." if @discount == 0
	@total *= (100.0-@discount)/100.0
	"After the discount, the total comes to $#{@total.to_i}."
  end
  
  def void_last_transaction
    @total -= @last_sum
	@last_sum = 0
  end
end
