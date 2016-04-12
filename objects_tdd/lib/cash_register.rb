#!/usr/bin/env ruby
# Cash Register
class CashRegister
  def initialize
    @total = 0
  end

  def total
    format('$%.2f', @total.abs)
  end

  def purchase(amount)
    @total += amount
    "purchase(#{format('$%.2f', amount)}) # => #{total}"
  end

  def pay(amount)
    @total -= amount
    if @total == 0
      "pay(#{format('$%.2f', amount)}) # => #{total}"
    elsif @total > 0
      "pay(#{format('$%.2f', amount)}) # => Your new total is #{total}"
    elsif @total < 0
      "pay(#{format('$%.2f', amount)}) # => Your change is #{total}"
    end
  end
end
