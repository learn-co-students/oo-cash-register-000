# Write your code here.

class CashRegister
  attr_writer :total
  attr_reader :total, :items, :discount

  def initialize(number=0)
    @total = 0
    @discount = number
    @items = []
  end


  def add_item(item, price,number=1)
    @total += price*number
    (1..number).each do |i| 
      @items << item 
    end
  end

  def apply_discount
    if @discount ==0 then return "There is no discount to apply."
    else @total = @total.to_f*(1-@discount.to_f/100)
    end
    return "After the discount, the total comes to $#{@total.to_i}."
  end

end
