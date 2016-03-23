#!/usr/bin/env ruby
# Cash Register
class CashRegister
  def initialize
    @total = 0
  end

  def total
    money(@total.abs)
  end

  def money(amount)
    format('$%.2f', amount)
  end

  def purchase(amount)
    @total += amount
    "purchase(#{money(amount)}) # => #{total}"
  end

  def pay(amount)
    @total -= amount
    if @total == 0
      "pay(#{money(amount)}) # => #{total}"
    elsif @total > 0
      "pay(#{money(amount)}) # => Your new total is #{total}"
    elsif @total < 0
      "pay(#{money(amount)}) # => Your change is #{total}"
    end
  end
end
