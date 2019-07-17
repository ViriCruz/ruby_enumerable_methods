module Enumerable

  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_each_with_index
    #code here
    
    arr = []
    index = 0
    self.my_each do |element| 
      arr << element
      yield(element, index) 
      index += 1 
    end 
    arr
  end
end

# class MyMethods
#   include Enumerable
  
#   def initialize; end
# end

# each = MyMethods.new
#each.my_each_with_index([2, 3, 4]) { |index| puts "my index #{index}"}
hash = {}
# print %w(cat dog wombat).each_with_index { |item, index|
#   hash[item] = index
# }
print %w(cat dog wombat).my_each_with_index { |item, index| hash[item] = index }

print hash