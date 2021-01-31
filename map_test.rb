class Array
  def map_implementation
    self.each_with_index{|n,i| self[i] = yield(n)}
  end
  def custom_select
      return unless block_given?
      new_arr = []
      self.each {|a| new_arr << a if yield(a)}
      new_arr
  end

  def custom_find
    return unless block_given?
    new_arr = []
    self.each do |a|
      new_arr << a if yield(a)
    end
    new_arr.first
  end
end

  arra = [3,4,5]
  puts arra.custom_select {|a| a>2}
  puts arra.custom_find {|a| a > 2}
  arra.map_implementation{|n| puts n*n}


