class VehicleImplementation
    attr_accessor :number_of_tyres, :seat_count

    def initialize(number_of_tyres, seat_count)
      @number_of_tyres, @seat_count = number_of_tyres, seat_count
    end
    def moves
      puts "Moving #{self.class.name}."
    end
  end

  class Car < Vehicle
    def initialize(number_of_tyres, seat_count)
      super
    end
  end

  class Bike < Vehicle
    def initialize(number_of_tyres, seat_count)
      super
    end
  end

  car = Car.new(4, 7)
  car.moves
  puts car.number_of_tyres
  puts car.seat_count
  bike = Bike.new(2, 3)
  bike.moves
  puts bike.number_of_tyres
  puts bike.seat_count

