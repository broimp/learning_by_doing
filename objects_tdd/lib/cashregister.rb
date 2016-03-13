#!/usr/bin/env ruby

# Cash Register
class CashRegister
  attr_accessor(:total)

  def initialize(total = 0)
    @total = total
  end

  def money(amount)
    format('$%.2f', amount)
  end

  def total
    "total # => #{money(@total)}"
  end

  def purchase(amount)
    @total += amount
    "purchase(#{money(amount)}) # => #{money(@total)}"
  end

  def pay(amount)
    @total -= amount
    if @total == 0
      "pay(#{money(amount)}) # => #{money(@total)}"
    elsif @total > 0
      "pay(#{money(amount)}) # => Your new total is #{money(@total)}"
    else
      "pay(#{money(amount)}) # => Your change is #{money(@total.abs)}"
    end
  end
end
