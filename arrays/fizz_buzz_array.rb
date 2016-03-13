#!/usr/bin/env ruby

def what_to_do_with(value)
  if value % 3 == 0 && value % 5 == 0
    'FizzBuzz'
  elsif value % 3 == 0
    'Fizz'
  elsif value % 5 == 0
    'Buzz'
  else
    value
  end
end

array = (1..100).to_a
array.map! { |element| what_to_do_with(element) }

array.each do |value|
  puts value
end
