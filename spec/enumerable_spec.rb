require_relative '../enumerable'

# collection of tests
describe Enumerable do 
  # write your examples here
  # testing my_each
  describe "#my_each" do
    let!(:num_arr){[2, 3, 4, 5]}
    let!(:str_arr){['a', 'b', 'c', 'd']}
    context "when passing a unidimensional integer array" do
      # example here
      it do
        expect{ num_arr.my_each { |x| print x } }.to output("2345").to_stdout
      end
    end
  
    context "when passing a unidimensional string array" do
      # example here
      it do
        expect{ str_arr.my_each { |s| print s } }.to output("abcd").to_stdout
      end
    end

    # edge case
    context "when passing an empty array" do 
      it do
        expect( [].my_each { |e| print e } ).to match_array([])
      end
    end
  end
  
end