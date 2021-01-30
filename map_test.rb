class Array
  def map_implementation
    self.each_with_index{|n,i| self[i] = yield(n)}
  end
end
arra = [3,4,5]
arra.map_implementation{|n| puts n*n}


