# piece of furniture
class Table
  attr_accessor :name, :width, :length, :area
  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
    area
  end

  def area
    @area = @width * @length
  end

  def rotate_90
    previous_width = @width
    previous_length = @length
    @width = previous_length
    @length = previous_width
    @name = @name.reverse
  end
end
