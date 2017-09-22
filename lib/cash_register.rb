require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times {items << title}
    self.total += (price * quantity)
    # binding.pry
    self.transactions = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (self.total - (self.total * (discount.to_f / 100))).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    # binding.pry
    self.total -= self.transactions
  end

end
