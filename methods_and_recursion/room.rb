#!/usr/bin/env ruby
require_relative 'table'

# A room full of restaurant tables
class Room
  attr_accessor :room_width, :room_length

  def initialize(room_width = 20, room_length = 40)
    set_tables
    initialize_table_totals
    @room_width = room_width
    @room_length = room_length
    @room_area = room_width * room_length
  end

  def set_tables
    @tables = []
    @tables[0] = Table.new('table1', 5, 8)
    @tables[1] = Table.new('table2', 3, 7)
    @tables[2] = Table.new('table3', 3, 6)
    @tables[3] = Table.new('table4', 4, 8)
    @tables[4] = Table.new('table5', 7, 10)
    @tables[5] = Table.new('table6', 6, 12)
    @tables[6] = Table.new('table7', 3, 7)
    @tables[7] = Table.new('table8', 4, 11)
    @tables[8] = Table.new('table9', 7, 10)
  end

  def display_table(table)
    puts "#{table.name} w: #{table.width} l: #{table.length} a: #{table.area}"
    @total_width += table.width
    @total_length += table.length
    @total_area += table.area
  end

  def display_totals
    averages
    print "tables: #{@tables.count}  width: #{@total_width}"
    print "  length: #{@total_length}"
    print "  area: #{@total_area}"
    puts
    print "average width: #{@average_width}"
    print "  length: #{@average_length}"
    puts
    display_room
  end

  def averages
    @average_length = format('%1d', (@total_length / @tables.count))
    @average_width = format('%1d', (@total_width / @tables.count))
  end

  def display_room
    print "room: width: #{@room_width}  length: #{@room_length}"
    print "  area: #{@room_area}"
    puts
  end

  def initialize_table_totals
    @total_width = 0.0
    @total_length = 0.0
    @total_area = 0.0
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
room = Room.new(15, 70)
puts
puts 'Initial set of tables'
room.initial_tables
puts
puts 'Flip longer than average tables'
room.rearrange_tables
