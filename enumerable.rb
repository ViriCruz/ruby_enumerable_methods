module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_map(proc)
    arr = []
    self.to_a.my_each { |element| arr << proc.call(element) }
    arr
  end
end

include Enumerable

proc = Proc.new {
  |element|
  element * element
} 
#a proc can be stored in a variable and can be passed as a normal argument

print (1..4).my_map(proc)   #=> [1, 4, 9, 16]
#print (1..4).my_map { |e| e * e }