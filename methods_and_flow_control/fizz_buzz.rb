#!/usr/bin/env ruby

def fizz_test(number)
  (number % 3 == 0)
end

def buzz_test(number)
  (number % 5 == 0)
end

(1..100).each do |number|
  if fizz_test(number) && buzz_test(number)
    puts 'FizzBuzz'
  elsif fizz_test(number)
    puts 'Fizz'
  elsif buzz_test(number)
    puts 'Buzz'
  else
    puts number
  end
end
