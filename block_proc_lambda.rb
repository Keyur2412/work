def block_que()
  puts "Before block"
  yield(2,3)
  puts "After block"

end

block_que{|a, b| puts "Answer is #{a*2}, #{b*2}"}

def proc_que(multiply)
  puts "Before proc"
  [9, 5,4].each{|n| multiply.call(n)}
  puts "After proc"
end

multiply = Proc.new {|n| puts n*2}
proc_que(multiply)

def lambda_que(multiply)
  puts "Before lambda"
  [3, 4, 5].map{|n| n=multiply.call(n)}
  puts "After lambda"
end
result = []
lambda_que = ->(n){return n*2}
  lambda_que(multiply)


