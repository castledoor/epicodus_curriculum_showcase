require 'spec_helper'

describe Genre do
  it 'is initialized with a type' do
    genre = Genre.new('horror')
    genre.should be_an_instance_of Genre
  end

  it 'gets the genre type' do
    genre = Genre.new('romance')
    genre.type.should eq 'romance'
  end

  it 'saves a new genre to the database' do
    genre = Genre.new('childerens')
    genre.save
    genre.id.should be_an_instance_of Fixnum
    Genre.all.should eq [genre]
  end

  it 'is the same genre if it has the same type' do
    genre1 = Genre.new('action')
    genre2 = Genre.new('action')
    genre1.should eq genre2
  end
end