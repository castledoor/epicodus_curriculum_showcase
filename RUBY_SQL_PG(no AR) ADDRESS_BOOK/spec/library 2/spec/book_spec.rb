require 'spec_helper'


describe Book do
  it 'is initialized with a hash of attributes' do
  book = Book.new({'title' => 'Cat in the Hat', 'author_id' => 1, 'genre_id' => 1})
  book.should be_an_instance_of Book
  end

  it 'saves to the database' do
    book = Book.new({'title' => 'Cat in the Hat', 'author_id' => 1, 'genre_id' => 1})
    book.save
    Book.all.should eq [book]
  end

   it 'is the same book if it has the same name' do
    book1 = Book.new('Sleeping Beauty')
    book2 = Book.new('Sleeping Beauty')
    book1.should eq book2
  end
end

