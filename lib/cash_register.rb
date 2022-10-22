require "pry"

class CashRegister
 attr_accessor :discount, :total, :items

 def initialize(discount = 0, total = 0)
  @discount = discount
  @total = total
  @items = []
 end

 def add_item(title, price, quantity=1)
  @title = title
  @quantity = quantity
  @total += price * quantity
  # Loop through all add_item entries
  quantity.times do
  self.items << title
  end
 
 end

 def apply_discount
  if @discount > 0
   @total *= (1 - @discount * 0.01)
   return "After the discount, the total comes to $#{self.total.to_i}."
  else
   "There is no discount to apply."
  end
 end

 def void_last_transaction
  if @total.length > 0
   @total[-1].delete
  end
  self.total -= self.total
 end
end
