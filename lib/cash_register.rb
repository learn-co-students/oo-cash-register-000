require "pry"

class CashRegister

  attr_accessor :total, :discount, :item_list
  attr_writer :total



  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @item_list = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times do item_list.push(item)
    end
    newPrice = price * quantity
    if total == 0 || total == nil
    @total = newPrice
    else
    @total += newPrice
    end
  end

  def apply_discount
    if discount != 0
      amountOff = (discount.to_f / 100) * total
      @total = total - amountOff
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    item_list
  end

end