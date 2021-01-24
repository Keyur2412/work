class Rectangle

  attr_accessor :area

  def initialize(length,breadth)
    @length, @breadth = length, breadth
    @area = @length * @breadth
  end

  #Getter Methods
  def getLength
    @length
  end

  def getBreadth
    @breadth
  end

  #Setter Methods
  def setLength=(value)
    @length = value
  end

  def setBreadth=(value)
    @breadth = value
  end

end

obj1 = Rectangle.new(3,2)
puts obj1.area
