#!/usr/bin/env ruby

seconds_per_minute = 60
minutes_per_hour = 60
hours_per_day = 24
days_per_week = 7
days_per_year = 365
seconds_per_hour = seconds_per_minute * minutes_per_hour
seconds_per_day = seconds_per_hour * hours_per_day
seconds_per_week = seconds_per_day * days_per_week
seconds_per_year = seconds_per_day * days_per_year
puts "There are #{seconds_per_minute} seconds in a minute"
puts "There are #{minutes_per_hour} minutes in an hour"
puts "There are #{hours_per_day} hours in a day"
puts "There are #{days_per_week} days in a week"
puts 'That means there are:'
puts "  #{seconds_per_hour} seconds in an hour,"
puts "  #{seconds_per_day} seconds in a day,"
puts "  #{seconds_per_week} seconds in a week"
years_20 = 20
years_100 = 100
puts "That means when you turn #{years_20}, you've been alive for \
#{(years_20 * seconds_per_year)} seconds,"
puts "and if you make it to #{years_100}, you will have lived \
#{(years_100 * seconds_per_year)} seconds. Make them count!"
