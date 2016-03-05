require "./table.rb"

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
    @tables[7] = Table.new('table8', 7, 11)
    @tables[8] = Table.new('table9', 7, 10)
  end

  def display_table(table)
    puts "#{table.name} w: #{table.width} l: #{table.length} a: #{table.area}"
    @table_total_width += table.width
    @table_total_length += table.length
    @table_total_area += table.area
  end

  def display_table_totals
    print "tables: #{@tables.count}  width: #{@table_total_width}"
    print "  length: #{@table_total_length}"
    print "  area: #{@table_total_area}"
    puts
    print "average width: #{@table_total_width / @tables.count}"
    print "  length: #{@table_total_length / @tables.count}"
    puts
    display_room
  end

  def display_room
    print "room: width: #{@room_width}  length: #{@room_length}"
    print "  area: #{@room_area}"
    puts
  end

  def initialize_table_totals
    @table_total_width = 0.0
    @table_total_length = 0.0
    @table_total_area = 0.0
  end

  def floor_plan
    initialize_table_totals
    @tables.each do |table|
      display_table(table)
    end
    display_table_totals
  end

  def longways
    initialize_table_totals
    @tables.each do |table|
      table.rotate_90 if table.width > table.length
      display_table(table)
    end
    @longways_average_length = @table_total_length / @tables.count
    display_table_totals
  end

  def longways_balance
    initialize_table_totals
    @tables.each do |table|
      table.rotate_90 if table.length > @longways_average_length
      display_table(table)
    end
    display_table_totals
  end
end

room = Room.new(20, 70)
room.floor_plan
room.longways
room.longways_balance
