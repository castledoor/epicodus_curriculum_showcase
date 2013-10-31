

describe Library do
  it 'is initliazed' do
    library = Library.new
    library.should be_an_instance_of Library
  end

  it 'is empty' do
    library = Library.new
    library.available_inventory.should eq []
  end

  it 'accepts books' do
    library = Library.new
    book = Book.new({'title' => 'Cat in the Hat', 'author' => 'Dr.Suess', 'genre_id' => 1})
    library.put_book_in_available_inventory(book)
    library.available_inventory.should eq [book]
  end
end