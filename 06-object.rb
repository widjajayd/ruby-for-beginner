class Rectangle
  attr_accessor :long
  
  def initialize(length, width)
    @length = length
    @width = width
    @@total = @@total + 1
  end
  
  def area
    @length * @width
  end
  
  @@total = 0
  
  def self.total_boxes
    @@total
  end
end

# main program
box1 = Rectangle.new(10,2)
puts "box 1 area: #{box1.area}"
box2 = box1
box3 = Rectangle.new(30,3)
puts "Total number of boxes: #{Rectangle.total_boxes}"
puts box1
puts box2
puts box3

# program output
# box 1 area: 20
# Total number of boxes: 2
# <Rectangle:0x00007fbc0f8c9150>
# <Rectangle:0x00007fbc0f8c9150>
# <Rectangle:0x00007fbc0f8c9060>