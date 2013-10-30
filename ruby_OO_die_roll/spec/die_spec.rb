require'rspec'
require 'die'


describe Die do
  it'takes an argument' do
    die = Die.new(6)
    die.should be_an_instance_of Die
  end
  it 'returns a number between 1 and the number of sides' do
    die = Die.new(6)
    die.stub(:rand) {1}
    die.roll.should eq(1)
  end    
end