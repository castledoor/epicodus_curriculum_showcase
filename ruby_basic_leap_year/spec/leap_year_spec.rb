require 'rspec'
require 'leap_year'

describe 'leap_year' do
 it "checks to see if year is leap year" do
    leap_year(1900).should eq false
  end
  it "returns true when the year is divisble 4" do
    leap_year(2000).should eq true
  end
  it "returns true when the year is divisble by 400 and by 100" do
    leap_year(2400).should eq true
  end 
  it "returns false when the year is divisible by 100 and not by 400 " do
    leap_year(2500).should eq false
  end
end 
