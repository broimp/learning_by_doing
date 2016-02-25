#!/usr/bin/env ruby

text = 'this is a string to practice with'
puts text.downcase
puts text.capitalize
puts text.upcase
puts text.capitalize.gsub('string', "'string'")
puts "The string '#{text}' has #{text.length} characters"
puts text.reverse
puts "#{(text.gsub('this is a string to ', '').gsub('with', '') * 3).strip}!"
