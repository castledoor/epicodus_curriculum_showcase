require 'rspec'
require 'numbers_to_words'

describe 'numbers_to_words' do
  it "gives the word value of any number less than 10" do
    numbers_to_words(7).should eq ("seven")
  end 
  it "gives the word value of any number between 11-19" do
    numbers_to_words(12).should eq ("twelve")
  end
  it "gives the word value of any number between 20-100" do
    numbers_to_words(54).should eq ("fifty four")
  end
  it "gives the word value of any number between 20-100" do
    numbers_to_words(21).should eq ("twenty one")
  end
  it "gives the word value of any number between 20-100" do
    numbers_to_words(99).should eq ("ninety nine")
  end
  it "gives the word value of any number between 20-99" do
    numbers_to_words(20).should eq ("twenty ")
  end
  it "gives the word value of any number between 100 - 999" do
    numbers_to_words(456).should eq ("four hundred fifty six")
  end 
  it "gives the word value of any number between 100 - 999" do
    numbers_to_words(999).should eq ("nine hundred ninety nine")
  end
  it "gives the word value of any number between 100 - 999" do
    numbers_to_words(909).should eq ("nine hundred nine")
  end 
  it "gives the word value of any number between 100 - 999" do
    numbers_to_words(100).should eq ("one hundred ")
  end 
  it "gives the word value of any number between 1000 - 999999" do 
    numbers_to_words(1001).should eq ("one thousand one")
  end
  it "gives the word value of any number between 1000 - 999999" do 
    numbers_to_words(3301).should eq ("three thousand three hundred one")
  end
  it "gives the word value of any number between 1000 - 999999" do 
    numbers_to_words(9999).should eq ("nine thousand nine hundred ninety nine")
  end
  it("gives the word value of any number between 1000 - 999999?") do
    numbers_to_words(19999).should eq ("nineteen thousand nine hundred ninety nine")
  end 
  it("gives the word value of any number between 1000 - 999999?") do
    numbers_to_words(89999).should eq ("eighty nine thousand nine hundred ninety nine")
  end
  it("gives the word value of any number between 1000 - 999999?") do
    numbers_to_words(999999).should eq ("nine hundred ninety nine thousand nine hundred ninety nine")
  end
  it("gives the word value of any number between 1000000 - 100000000") do
    numbers_to_words(3532456).should eq ("three million five hundred thirty two thousand four hundred fifty six")
  end 
  it("gives the word value of any number between 1000000000 - 100000000000") do
    numbers_to_words(1000000000).should eq("one billion ")
  end
  it("gives the word value of any number between 1000000000 - 100000000000") do
    numbers_to_words(3002540000).should eq("three billion two million five hundred forty  thousand ")
  end  
end