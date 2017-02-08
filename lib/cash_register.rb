
require 'pry'

class CashRegister

  attr_accessor :total, :cart

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @cart = []
  end

  def discount 
    @discount
  end

  def total=(total)
    @total = total
  end

  def add_item(item, price, qty=1)
    @total += price * qty
    
    qty.times do 
      @cart << item
    end
  end

  def apply_discount
    if @discount.nil?
      result = "There is no discount to apply."
    else
      @total *= (0.01 * (100 - discount))
      result = "After the discount, the total comes to $#{@total.round(0)}."
    end
    result
  end

  def items
    @cart
  end


end
