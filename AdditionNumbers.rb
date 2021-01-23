
class AdditionNumbers
  CONST = 2
  @@cls_var = 3

  def initialize(inst_var)
    @inst_var = inst_var
  end

  def addition(loc_var)
    sum = loc_var + CONST + @inst_var + @@cls_var
    @@cls_var += 1
    puts "Result is #{sum}"
  end
end

addition_obj = AdditionNumbers.new(4)
addition_obj.addition(5)
addition_obj.addition(5)
