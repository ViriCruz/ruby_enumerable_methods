module Enumerable
  def my_each(arr)
    #code here
    n = arr.length
    for i in 0...n
      element = arr[i]
      yield(element)
    end
    
  end
end

class MyMethods
  include Enumerable
  
  def initialize; end
end

each = MyMethods.new
each.my_each([2, 3, 4]) { |param| puts "my each element #{param}"}


[2, 3, 4].each { |param| puts "element #{param}" }