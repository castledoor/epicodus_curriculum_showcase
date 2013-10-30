require 'rspec'
require 'triangle'

describe 'triange' do 
  it "returns an equalateral triangle when all the sides are the same" do
    triangle([4,4,4]).should eq("equalateral")
  end  
  it "returns an isosceles triangle when only two sides are the same" do
    triangle([8,8,4]).should eq("isosceles")
  end
  it "reutrns a scalene triangle when no sides are the same" do
    triangle([4,6,3]).should eql("scalene")
  end  
  it "checks to see if triangle is valid" do
    triangle([2,1,4]).should eql(false)
  end  
end