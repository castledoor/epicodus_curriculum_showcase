require 'spec_helper'

describe Author do
  it "is initiliazed with a name" do
  author = Author.new("name")
  author.should be_an_instance_of Author
  end

  it 'saves a new author to the database' do
    author = Author.new('Dr. Suess')
    author.save
    author.id.should be_an_instance_of Fixnum
    Author.all.should eq [author]
  end

  it 'is the same Author if it has the same name' do
    author1 = Author.new('action')
    author2 = Author.new('action')
    author1.should eq author2
  end
end

