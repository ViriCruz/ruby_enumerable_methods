require_relative '../enumerable'

# collection of tests
# Note: for raise error there are 3 possible errors: NoMethodError, NameError or ArgumentError, consider
# provide a specific error when testing a negative escenario 
describe Enumerable do 
  # write your examples here
  let!(:str_arr){['a', 'b', 'c', 'd']}
  let!(:num_arr){[2, 3, 4, 5]}
  # testing my_each
  describe "#my_each" do
    context "when passing a unidimensional integer array" do
      # example here
      it do
        expect { num_arr.my_each { |x| print x } }.to output("2345").to_stdout
      end
    end
  
    context "when passing a unidimensional string array" do
      # example here
      it do
        expect { str_arr.my_each { |s| print s } }.to output("abcd").to_stdout
      end
    end

    # edge case
    context "when passing an empty array" do 
      it do
        expect([].my_each { |e| print e }).to match_array([])
      end
    end

    # edge case
    context "when passing a string" do
      it "raises" do
        expect { "1".my_each { |e| print e } }.to raise_error(NoMethodError)
      end
    end

    # edge case
    context "when passing a number" do
      it "raises" do
        expect { 1.my_each { |e| print e } }.to raise_error(NoMethodError)
      end
    end
  end

  describe "#my_each_with_index" do
    context "when passing a string array" do
      it do
        expect { str_arr.my_each_with_index { |s, i| print "#{s}->#{i}" } }.to  output("a->0b->1c->2d->3").to_stdout
      end
    end

    context "when passing a integer array" do
      it do
        expect { num_arr.my_each_with_index { |n, i| print "#{n}->#{i} " } }.to  output("2->0 3->1 4->2 5->3 ").to_stdout
      end
    end

    #edge case
    context "when passing an empty array" do
      it do
        expect([].my_each_with_index { |o, i| print o }).to match_array([])
      end
    end

    #edge case
    context "when passing a number" do
      # raise error
      it "raises" do
        expect { 2.my_each_with_index { |e, i| print "#{e}->#{i}" } }.to raise_error(NoMethodError)
      end
    end
  end
  
end