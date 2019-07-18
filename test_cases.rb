require './enumerable.rb'

include Enumerable

puts "each method"

#test cases - my_each
[2, 3, 4].my_each { |param| print "element #{param} " } # => element 2 element 3 element 4

#original each
[2, 3, 4].each { |param| print "element #{param} " } # => element 2 element 3 element 4

puts "\neach with index method"

hash1, hash2 = {} , {}
#original method
print %w(cat dog wombat).each_with_index { |item, index| hash1[item] = index } # => ["cat", "dog", "wombat"]

#copy
print %w(cat dog wombat).my_each_with_index { |item, index| hash2[item] = index } # => ["cat", "dog", "wombat"]

print "original #{hash1} -- my-copy #{hash2}"

puts "\nselect method"

#original
print (2..4).select { |param| param % 3 == 0 } # => [3]

#copy
print [2, 3, 4].my_select { |param| param % 3 == 0 } # => [3]

puts "\nall? method"

#original
puts %w[ant bear cat].all? { |word| word.length >= 3 } # => true

#copy
puts %w[ant bear cat].my_all? { |word| word.length >= 3 } # => true

puts "any? method"

#copy
print %w[ant bear cat].my_any? { |word| word.length >= 4 } #=> true

puts ""

#original
print %w[ant bear cat].any? { |word| word.length >= 4 } #=> true

puts "\nnone? method"

#copy
print %w{ant bear cat}.my_none? { |word| word.length == 3 } #=> false

puts ""

#original
print %w{ant bear cat}.none? { |word| word.length == 3 } #=> false

ary = ["a", "b", "c", "a"]

puts "\ncount method"

#original
print ary.count("a") # => 2

puts ""

#copy
print ary.my_count("a") # => 2

proc = Proc.new {
  |element|
  element * element
} 

puts "\nmap method"
#copy
print (1..4).my_map(proc) { |e| e * e } #only execute the proc => [1, 4, 9, 16]
puts ""
#original
print (1..4).map { |e| e * e } # => [1, 4, 9, 16]

puts "\ninject method"

def multiply_els(arr)
  arr.my_inject { |times, n| times * n }
end 

#original
puts (5..10).inject { |sum, n| sum + n } # => 45
#copy
puts (5..10).my_inject { |sum, n| sum + n } # => 45

puts multiply_els([2,4,5]) # => 40