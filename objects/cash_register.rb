#!/usr/bin/env ruby

# Object for sales register instances
class CashRegister
  def initialize(total_amount, purchase_amount, pay_amount)
    @total_amount = total_amount
    @purchase_amount = purchase_amount
    @pay_amount = pay_amount
  end

  def display_total
    puts "register.total # => #{to_currency(@total_amount)}"
  end

  def to_currency(amount)
    format('%.2f', amount)
  end

  def underpayment
    @pay_amount < @total_amount
  end

  def change_due
    @pay_amount > @total_amount
  end

  def display_change
    if change_due
      print 'register.pay # => Your change is '
      puts to_currency(@pay_amount - @total_amount)
    elsif underpayment
      print 'register.due # => You still owe '
      puts to_currency(@total_amount - @pay_amount)
    end
    @total_amount = 0.00
  end

  def purchase_amount
    print 'register.purchase # => '
    @purchase_amount = gets.chomp.to_f
    @total_amount += @purchase_amount
    print " Another purchase? Enter 'yes' for another. "
    answer = gets.chomp
    purchase_amount if answer == 'yes'
  end

  def payment_amount
    if @total_amount > 0
      print 'register.pay # => '
      @pay_amount = gets.chomp.to_f
    end
  end
end

loop do
  register = CashRegister.new(0.00, 0.00, 0.00)
  register.display_total
  register.purchase_amount
  register.display_total
  register.payment_amount
  register.display_change
  register.display_total

  puts "Another sale? Enter 'yes' to continue. "
  answer = gets.chomp
  break if answer != 'yes'
end
