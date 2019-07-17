module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_count(elem = nil)
    count = 0
    self.my_each do |element|
      
      if elem
        count += 1 if elem == element
      else
        count += 1
      end
      
    end
    count
  end
end

include Enumerable
ary = ["a", "b", "c", "a"]
print ary.count("a")               #=> 4
print ary.my_count("a")