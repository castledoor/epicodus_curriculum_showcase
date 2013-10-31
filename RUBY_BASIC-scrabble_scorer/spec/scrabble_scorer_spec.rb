require 'rspec'
require 'scrabble_scorer'

describe 'scrabble_scorer' do
  it "adds together the value of letters  input word that are worth 1 pt" do
    scrabble_scorer("rats").should eq (4)
  end
  it "adds together the value of letters  input word that are worth 1 or 2 pts" do
    scrabble_scorer("dogs").should eq (6)
  end
  it "adds together the value of letters  input word that are worth 1,2, and 3 pts" do
    scrabble_scorer("braces").should eq (10) 
  end
  it "adds together the value ofletters  input word that are worth 1,2,3, and 4 pts" do
    scrabble_scorer("frowny").should eq (15)
  end
  it "adds together the value of letters input word that are worth 1,2,3,4 and 5 pts" do
    scrabble_scorer("kites").should eq (9)   
  end
  it "adds together the value of letters input word that are worth 1,2,3,4,5 and 8 pts" do
    scrabble_scorer("jack").should eq (17)
  end 
  it "adds toegther the value of letters input word that are worth 1,2,3,4,5,8 and 10 pts" do
    scrabble_scorer("quiz").should eq (22)     
  end
end  

describe 'scrabble_scorer_double_word' do
  it "doubles the score of any input word" do
    scrabble_scorer_double_word(22).should eq (44)
  end     
end 

# describe 'scrabble_scorer_double_letter' do
#   it "double the score of any letter" do 
#     scrabble_scorer_double_letter(4).should eq (8)
#   end
# end       

