module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_all?
    val = true
    self.my_each { |element| return false if yield(element) == false }
    val
  end

end

include Enumerable

print [nil, true, 99].my_all?

# class MyMethods
#   include Enumerable
  
#   def initialize; end
# end

# each = MyMethods.new
# #print each.my_each([2, 3, 4]) { |param| param.even? }

# #print [2, 3, 4].each { |param| param.even? }
# #print [2, 4].all? { |param| param.even? }
# arr_s = %w(ant bear cat)
# puts each.my_all?([1, 2i, 3.14])

# #puts %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
# #puts %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
# puts %w[ant bear cat].all?(/t/)                        #=> false
# #puts [1, 2i, 3.14].all?(Numeric)                       #=> true
# #puts [nil, true, 99].all?                              #=> false
# #puts [].all?                                           #=> true