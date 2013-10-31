require 'rspec'
require 'triangle'

describe Triangle do
  it 'takes three arguments' do
    triangle = Triangle.new(3,3,3)
    triangle.should be_an_instance_of Triangle
  end
  it 'checks to see if triangle is valid' do
    triangle = Triangle.new(9,9,20)
    triangle.triangle_type.should eq 'invalid'
  end  
  it 'checks to see if given inputs make up an equalateral triangle' do
    triangle = Triangle.new(5,5,5)
    triangle.triangle_type.should eq 'equalateral'
  end  
  it 'checks to see if given inputs make up an isosceles triangle' do
    triangle = Triangle.new(3,2,3)
    triangle.triangle_type.should eq 'isosceles'
  end 
  it 'checks to see if given inputs make up a scalene triangle' do
    triangle = Triangle.new(3,4,5)
    triangle.triangle_type.should eq 'scalene' 
  end  
end