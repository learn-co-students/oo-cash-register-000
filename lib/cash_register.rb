# Write your code here.

class CashRegister

  attr_reader :discount, :total

  def initialize(num=0)
    @total = 0
    @discount = num
    @all_items = []
  end

  def total=(item)
    @total = item + @total
  end

  def add_item(item, price, quantity=1)
    @total = @total + (price*quantity)
    while quantity > 0
      @all_items << item
      quantity -= 1
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = (@total * (100 - @discount))/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @all_items
  end

end
