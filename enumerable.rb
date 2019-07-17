module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_select
    arr = []
    self.my_each { |element| arr << element if yield(element) == true }
    arr
  end
end

# class MyMethods
#   include Enumerable
  
#   def initialize; end
# end

#print (1..10).my_select { |param| param % 3 == 0 } broke
#print [2, 3, 4].my_select { |param| param % 3 == 0 } works
print (1..10).find_all { |i|  i % 3 == 0 }   #=> [3, 6, 9]

print (1..10).select { |param| param % 3 == 0 }