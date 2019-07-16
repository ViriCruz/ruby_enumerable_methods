module Enumerable
  def my_each_with_index(arr)
    #code here
    n = arr.length
    for i in 0...n
      yield(i)
    end
    
  end
end

class MyMethods
  include Enumerable
  
  def initialize; end
end

each = MyMethods.new
each.my_each_with_index([2, 3, 4]) { |index| puts "my index #{index}"}


[2, 3, 4].each_index { |index| puts "i #{index}" }