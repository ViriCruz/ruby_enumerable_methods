module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_map
    arr = []
    self.to_a.my_each { |element| arr << yield(element) }
    arr
  end
end

include Enumerable

proc = Proc.new {
  |element|
  element * element
}

print (1..4).my_map(&proc)     #=> [1, 4, 9, 16]