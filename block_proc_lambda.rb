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

def lambda_que(lambda_que)
  arr = [3,4,5]
  puts "Before lambda"
  arr.map{|n| n=lambda_que.call(n)}
  print arr
  puts "After lambda"
end
result = []
lambda_que = ->(n){return n*2}
  lambda_que(lambda_que)


