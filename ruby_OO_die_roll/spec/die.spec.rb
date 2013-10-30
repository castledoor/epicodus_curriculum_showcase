require'rspec'
require 'die'

describe Die do
  it'takes an argument' do
    die = Die.new(sides)
    die.should be_an_instance_of Die
  end  
end