require_relative '../enumerable'

# collection of tests
describe Enumerable do 
  # write your examples here
  # testing my_each
  context "when passing a unidimensional integer array to my_each method" do
    # example here
    it "my_each method should print every element of the array" do
      arr = [2,3,4,5]
      expect{arr.my_each { |x| print x }}.to output("2345").to_stdout
    end
  end

  context "when passing a unidimensional string array to my_each method" do
    # example here
  end

end