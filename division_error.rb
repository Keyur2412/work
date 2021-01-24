class DivisionError < StandardError

    def initialize(number)
      @number = number
    end
    def errortest
    begin
      @number/0
    rescue
      ZeroDivisionError
      puts "Tried to divide by zero"
    end
  end
end
obj = DivisionError.new(10)
obj.errortest