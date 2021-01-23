
class Radius

  PIE = 3.14

  def initialize(radius)
  @radius = radius
  end

  def volume(height)
    volume = 2 * PIE * @radius * height
    puts "volume is #{volume}"
  end
end


addition_obj = Radius.new(10)
addition_obj.volume(5)
