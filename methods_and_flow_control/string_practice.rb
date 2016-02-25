#!/usr/bin/env ruby

text = 'this is a string to practice with'
puts text.downcase
puts text.capitalize
puts text.upcase
puts text.capitalize.gsub('string', "'string'")
puts "The string '#{text}' has #{text.length} characters"
puts text.reverse
text = text.gsub('this is a string to ', '')
text = text.gsub('with', '')
puts "#{(text * 3).strip}!"
