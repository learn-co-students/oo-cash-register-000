require 'pry'
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = {}
    @bag = []
    @transaction = []
  end

  def add_item(title, price, quantity = 1)
    @item[title] = price
    @total += quantity * price
    quantity.times{@bag << title}
    @item.each {|thing, cost| @transaction << cost}
  end

  def apply_discount
    if discount != 0
      @total -= (@discount.to_f / 100) * @total
      "After the discount, the total comes to $#{@total.to_int}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @bag
  end

  def void_last_transaction
    @total -= @transaction.pop
  end
end
