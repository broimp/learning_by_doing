#!/usr/bin/env ruby
require_relative 'table'

# A room full of restaurant tables
class Room
  attr_accessor :room_width, :room_length, :number_of_tables

  def initialize(room_width = 20, room_length = 40, number_of_tables = 10)
    @number_of_tables = number_of_tables
    @room_width = room_width
    @room_length = room_length
    @number_of_tables = number_of_tables
    @room_area = room_width * room_length
    set_tables
    initialize_table_totals
  end

  def set_tables # random assortment of table sizes
    @tables = []
    index = 0
    loop do
      return if index == @number_of_tables
      @tables[index] = Table.new(format('%02d', index), rand(3..5), rand(5..10))
      index += 1
    end
  end

  def display_table(table)
    puts "#{table.name} w: #{table.width} l: #{table.length} a: #{table.area}"
    @total_width += table.width
    @total_length += table.length
    @total_area += table.area
  end

  def display_totals
    averages
    print "tables: #{@number_of_tables}  width: #{@total_width}"
    print "  length: #{@total_length}"
    print "  area: #{@total_area}"
    puts
    print "average width: #{@average_width}"
    print "  length: #{@average_length}"
    puts
    display_room
  end

  def averages
    @average_length = format('%1d', (@total_length / @number_of_tables))
    @average_width = format('%1d', (@total_width / @number_of_tables))
  end

  def display_room
    print "room: width: #{@room_width}  length: #{@room_length}"
    print "  area: #{@room_area}"
    puts
  end

  def initialize_table_totals
    @total_width = 0
    @total_length = 0
    @total_area = 0
  end

  def initial_tables
    initialize_table_totals
    @tables.each do |table|
      display_table(table)
    end
    display_totals
  end

  def rearrange_tables
    initialize_table_totals
    @tables.each do |table|
      table.rotate_90 if table.length.to_f > @average_length.to_f
      display_table(table)
    end
    display_totals
  end
end

puts 'room.rb and table.rb'
room = Room.new(15, 120, 25)
puts
puts 'Initial set of tables'
room.initial_tables
puts
puts 'Flip longer than average tables'
room.rearrange_tables
