require 'rspec'
require 'roman_numerals'

describe 'roman_numerals' do
  it "translates numbers into roman numerals between 1-3" do
    roman_numerals(3).should eq ("III")
  end
  it "translates numbers into roman numerals between 1-3" do
    roman_numerals(2).should eq ("II")
  end
  it "tranlates 4 into a roman numeral" do
    roman_numerals(4).should eq ("IV")
  end
  it "tranlates 5 into a roman numeral" do
    roman_numerals(5).should eq ("V")
  end 
  it "translates numbers between 11-20" do
    roman_numerals(14).should eq ("XIV")
  end
  it "translates numbers between 21-100" do
    roman_numerals(45).should eq ("XLV")
  end
  it "translates numbers between 21-100" do
    roman_numerals(89).should eq ("LXXXIX")
  end
  it "translates numbers between 21-100" do
    roman_numerals(90).should eq ("XC")
  end
  it "translates numbers between 100-1000" do
    roman_numerals(345).should eq ("CCCXLV")
  end
  it "translates numbers between 100-1000" do
    roman_numerals(606).should eq ("DCVI")
  end
  it "translates numbers between 100-1000" do
    roman_numerals(600).should eq ("DC")
  end
  it "translates numbers between 100-1000" do
    roman_numerals(824).should eq ("DCCCXXIV")
  end
  it "tranlates numbers between 1000-3999" do
    roman_numerals(3400).should eq ("MMMCD") 
  end
  it "tranlates numbers between 1000-3999" do
    roman_numerals(1000).should eq ("M") 
  end
  it "tranlates numbers between 1000-3999" do
    roman_numerals(2000).should eq ("MM") 
  end  
  it "tranlates numbers between 1000-3999" do
    roman_numerals(2312).should eq ("MMCCCXII") 
  end         
end