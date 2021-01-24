require 'singleton'

class SingletonMethod
  def initialize(size)
    @size = size
  end
  def size
    @size
  end
end

obj = SingletonMethod.new(4)
def obj.size
  @size = 0
end
puts obj.size
obj1 = SingletonMethod.new(3)
puts obj1.size
