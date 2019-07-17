module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_any?
    value = false
    self.my_each { |element|  return true if yield(element) == true }
    value
  end
end

include Enumerable
print %w[ant bear cat].my_any? { |word| word.length >= 4 } #=> true
print %w[ant bear cat].any? { |word| word.length >= 4 } #=> true