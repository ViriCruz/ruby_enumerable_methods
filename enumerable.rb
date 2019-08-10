module Enumerable
  def my_each  #1
    n = self.length
    # if array empty?
    return [] if n.zero?

    for i in 0...n
      element = self[i]
      yield(element)
    end
    
  end

  def my_each_with_index #2
    arr = []

    index = 0

    self.my_each do |element| 
      arr << element

      yield(element, index) 

      index += 1 
    end

    arr
  end

  def my_select #3
    arr = []

    self.my_each { |element| arr << element if yield(element) == true }

    arr
  end

  def my_all? #4
    val = true

    self.my_each { |element| return false if yield(element) == false }

    val
  end

  def my_any? #5
    value = false

    self.my_each { |element|  return true if yield(element) == true }

    value
  end

  def my_none? #6
    value = true

    self.my_each { |element|  return false if yield(element) == true }

    value
  end

  def my_count(elem = nil) #7
    count = 0

    self.my_each do |element|
      
      if elem

        count += 1 if elem == element

      else

        count += 1

      end
      
    end

    count
  end

  def my_map(proc = nil) #8
    arr = []

    proc ? self.to_a.my_each { |element| arr << proc.call(element) } : self.to_a.my_each { |element| arr << yield(element) }
    
    arr
  end

  def my_inject #9
    arr = self.to_a

    sum = arr[0]

    for i in 0...(arr.length - 1)

      sum = yield(sum, arr[i + 1])

    end
   
    sum
  end
  
end