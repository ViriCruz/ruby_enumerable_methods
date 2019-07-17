module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_none?
    value = true
    self.my_each { |element|  return false if yield(element) == true }
    value
  end
end

include Enumerable
print %w{ant bear cat}.my_none? { |word| word.length == 3 } #=> false
print %w{ant bear cat}.none? { |word| word.length == 3 } #=> false