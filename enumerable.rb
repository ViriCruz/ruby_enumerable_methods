module Enumerable
  def my_each
    #code here
    n = self.length
    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_inject
    arr = self.to_a
    arr.pop
    sum = arr[0]
    arr.my_each do |element| 
      sum = yield(sum, element + 1)
    end
    sum
  end
end

include Enumerable

#Same using a block and inject
# (5..10).inject do |sum, n|  
#   puts "sum #{sum} n #{n}" 
#   sum + n
# end            #=> 45
 

print (5..10).my_inject { |sum, n| sum + n }