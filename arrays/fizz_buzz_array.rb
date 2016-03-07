#!/usr/bin/env ruby

numbers = []

(0..99).each do |number|
  test_number = number + 1
  if test_number % 3 == 0 && test_number % 5 == 0
    numbers.push('FizzBuzz')
  elsif test_number % 3 == 0
    numbers.push('Fizz')
  elsif test_number % 5 == 0
    numbers.push('Buzz')
  else
    numbers.push(test_number.to_s)
  end
end
numbers.each do |number|
  puts number
end
