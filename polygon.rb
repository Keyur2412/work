class Polygon
  def initialize(w, l = 0)
    @width  = w
    @length = l
  end
  attr_reader :length, :width
  def area
    puts "Area of #{self.class} is #{calculate_area}"
  end
  private
  def calculate_area
    @width * @length
  end
end
class Rectangle < Polygon
end
class Square < Polygon
  private

  def calculate_area
    @width * @width
  end
end
class Triangle < Polygon
  private

  def calculate_area
    ( @width * @length)/2
  end
end

rectangle = Rectangle.new(5, 2)
rectangle.area

square = Square.new(2)
square.area

triange = Triangle.new(4, 5)
triange.area