require 'rspec'
require 'dictionary'

describe Dictionary do
  it 'its a dictionary' do
    dictionary = Dictionary.new
    dictionary.should be_an_instance_of Dictionary
  end  

  it 'starts out with no words' do
    dictionary = Dictionary.new
    dictionary.words.should eq({})
  end

  it 'adds words to dictionary' do
    hash = {"hello" => "nin hao"}
    dictionary = Dictionary.new
    dictionary.adds_words(hash)
    dictionary.words.should eq hash
  end

  it 'searches dictionary' do
    hash = {"hello" => "nin hao"}
    hash1 = {"lunch" => "chi fan"}
    hash2 = {"dont want" => "bu yao"}
    dictionary = Dictionary.new
    dictionary.adds_words(hash)
end