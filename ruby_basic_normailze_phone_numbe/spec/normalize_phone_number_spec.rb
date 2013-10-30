require 'rspec'
require 'normalize_phone_number'

describe 'normalize_phone_number' do
  it "accepts numbers that are 10 only digits" do
    normalize_phone_number("7063264408").should eq("good")
  end
  it "it does not accept numbers that are longer that 11 digits" do
    normalize_phone_number("70632644088").should eq("bad")
  end
  it "accepts numbers that are 11 digits only if the first digit is a one" do
    normalize_phone_number("17063264408").should eq("good")
  end
  it "cuts the one off of 11 digit numbers starting with one" do
    one_number("17063264408").should eq("7063264408")
  end    
end