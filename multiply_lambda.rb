def multiply_lambda(lambda_que)
  puts "Before lambda"
  puts lambda_que.call(3,2)
  puts "After lambda"
end
lambda_que = ->(n,a){n*a}
multiply_lambda(lambda_que)
