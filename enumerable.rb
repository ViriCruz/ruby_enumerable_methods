module Enumerable
 

  def my_inject
    arr = self.to_a
    sum = arr[0]
    for i in 0...(arr.length - 1)
      sum = yield(sum, arr[i + 1])
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
def multiply_els(arr)
  arr.my_inject { |times, n| times * n }
end 

print (5..10).my_inject { |sum, n| sum + n }
print multiply_els([2,4,5])