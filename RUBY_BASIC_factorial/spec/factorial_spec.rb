require 'rspec'
require 'factorial'

describe 'factorial' do
  it "returns the answer of 1 for 0!" do
    factorial(0).should eq (1)
  end 
  it "returns the factorial for any positive input" do
    factorial(5).should eq (120)
  end  
end

