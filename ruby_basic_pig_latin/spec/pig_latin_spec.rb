require 'rspec'
require 'pig_latin'

describe 'pig_latin' do 
  it "removes the first consonant of a word and puts it at the end + 'ay'" do
    pig_latin("happy").should eq("appyhay")
  end  
  it "adds 'way' at the end all words beginning with a vowel" do
    pig_latin("apple").should eq("appleway")
  end  
  it "removes the first multiple consonats and puts them at the end of the word + 'ay'" do
    pig_latin("Play").should eq("ayplay")
  end
  it "removes the 'qu' from the begining of qu words and puts it at the end and adds 'ay'" do
    pig_latin("Queen").should eq("eenquay")
  end  
  it "translates english to pig latin when more than one word is input" do
    pig_latin("Green Eggs and Ham").should eq("eengray eggsway andway amhay")
  end
end